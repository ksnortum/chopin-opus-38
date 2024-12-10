%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

%
% Scheme functions
%

makeSpanner =
#(define-music-function (mrkup) (markup?)
  #{
    \override TextSpanner.bound-details.left.text = #mrkup
    \override TextSpanner.bound-details.left.stencil-align-dir-y = 0 % 0.25
    \override TextSpanner.bound-details.left-broken.text = ##f
  #})

smorzandoSpanner = \makeSpanner \markup \large \italic smorzando
rallentSpanner = \makeSpanner \markup \large \italic rallent.

%{
sempreDimMarkup = \markup \large \italic "sempre dim."
sempreDim =
  #(make-music 'DecrescendoEvent 'span-direction START 'span-type 'text
               'span-text sempreDimMarkup)
%}

%
% Redefine
%

staffUp   = \change Staff = "upper"
staffDown = \change Staff = "lower"

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

upperFermata = {
  \override Score.TextMark.self-alignment-X = #CENTER
  \textEndMark \markup { \musicglyph "scripts.ufermata" }
}

lowerFermata = {
  \tweak direction #DOWN
  \textEndMark \markup { \musicglyph "scripts.dfermata" }
}

%{
tupletOff = {
  \omit TupletBracket
  \omit TupletNumber
}

tupletOn = {
  \undo \omit TupletBracket
  \undo \omit TupletNumber
}

strictSpacingOn = {
  \override Score.SpacingSpanner.strict-note-spacing = ##t
  \newSpacingSection
}

strictSpacingOff = {
  \override Score.SpacingSpanner.strict-note-spacing = ##f
  \newSpacingSection
}

barLinesOff = {
  \omit Staff.BarLine 
  \omit Score.SpanBar
}

barLinesOn = {
  \undo \omit Staff.BarLine
  \undo \omit Score.SpanBar
}

makeHalfNote = \tweak duration-log 1 \etc
%}

%
% Markup
%

slentando = \markup \large \italic slentando
marcatoMarkup = \markup \large \italic marcato
stretto = \markup \large \italic stretto
riten = \markup \large \italic riten.
accel = \markup \large \italic accel.
% ten = \markup \large \italic ten.
% ms = \markup \large \italic m.s.
% md = \markup \large \italic m.d.
% smorz = \markup \large \italic smorz.
% accelerando = \markup \large \italic accelerando
% accel = \markup \large \italic accel.
% agitato = \markup \large \italic agitato
% animato = \markup \large \italic animato
% calando = \markup \large \italic calando
% crescMarkup = \markup \large \italic cresc.
% semprePiuMosso = \markup \large \italic "sempre più mosso"
% semprePiuAnimato = \markup \large \italic "sempre più animato"
piuMosso = \markup \large \italic "più mosso"
agitatoESempreForte = \markup \large \italic "agitato e sempre forte"
sotoVoce = \markup \large \italic "soto voce"
% conForza = \markup \large \italic "con forza"
aTempo = \markup \large \italic "a tempo"
% menoForte = \markup \large \italic "(meno forte)"
% nonDimin = \markup \large \italic "(non dimin.)"
% sempreForte = \markup \large \italic "sempre forte"
% dimRallent = \markup \large \italic "dim. rallent."
% pocoRiten = \markup \large \italic "poco riten."
% fPesante = \markup { \dynamic f \normal-text \large \italic pesante }
% PpSempreSottoVoce = \markup { 
%   \dynamic pp \normal-text \large \italic \pad-markup #0.1 "sempre sotto voce"
% }
menoF = \markup { \concat { \large "(meno " \dynamic f \large ")" } }
% pScherzando = 
%   \markup { \concat { "(" \dynamic p ") " \large "scherzando" } }
% pRiten = \markup { \dynamic p \large \italic riten. }
% fffPocoRiten = \markup { 
%   \dynamic fff \large \italic \whiteout \pad-markup #0.25 "poco riten." 
% }
sempreF = \markup { \large \italic sempre \dynamic f }
% trillSharp = \markup \teeny \sharp
% sfMarkup = \markup \dynamic sf

%
% Positions and shapes
%

moveArpeggioA = 
  \tweak positions #'(-4 . 1) 
  \tweak extra-spacing-width #'(-1 . 0)
  \tweak X-offset -1
  \tweak vertical-skylines ##f
  \etc
  
moveArpeggioB = 
  \tweak positions #'(-3 . 2) 
  \tweak extra-spacing-width #'(-1 . 0)
  \tweak X-offset -1
  \tweak vertical-skylines ##f
  \etc

moveArpeggioC = 
  \tweak positions #'(-3 . 1) 
  \tweak extra-spacing-width #'(-1 . 0)
  \tweak X-offset -1
  \tweak vertical-skylines ##f
  \etc
  
moveParenA = \override TextScript.extra-offset = #'(0.5 . 1.25)
moveParenB = \override TextScript.extra-offset = #'(0 . -1)
moveParenOff = \revert TextScript.extra-offset
  
moveNoteColumnA = \override Staff.NoteColumn.extra-offset = #'(0 . -3)
moveNoteColumnB = \override Staff.NoteColumn.force-hshift = 3
moveNoteColumnOff = \revert Staff.NoteColumn.force-hshift

rotateHairpinA = \once \override Hairpin.rotation = #'(-6 -1 0)
rotateHairpinB = \once \override Hairpin.rotation = #'(8 -1 0)

moveAccidentalA = \once \override Accidental.X-extent = #'(0 . 0)

moveNoteA = \once {
  \override Accidental.X-extent = #'(0 . 0)
  \override NoteColumn.force-hshift = #2
  \override Accidental.extra-offset = #'(2.9 . 0)
}

noteHeadWidthA = \once \override NoteHead.extra-spacing-width = #'(-2 . 0)
