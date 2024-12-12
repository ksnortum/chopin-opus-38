%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....
\version "2.24.0"

%
% Scheme functions
%

makeSpanner =
#(define-music-function (mrkup) (markup?)
  #{
    \override TextSpanner.bound-details.left.text = #mrkup
    \override TextSpanner.bound-details.left.stencil-align-dir-y = 0
    \override TextSpanner.bound-details.left-broken.text = ##f
  #})

smorzandoSpanner = \makeSpanner \markup \large \italic smorzando
rallentSpanner = \makeSpanner \markup \large \italic rallent.

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

%
% Markup
%

slentando = \markup \large \italic slentando
marcatoMarkup = \markup \large \italic marcato
stretto = \markup \large \italic stretto
riten = \markup \large \italic riten.
accel = \markup \large \italic accel.
piuMosso = \markup \large \italic "più mosso"
agitatoESempreForte = \markup \large \italic "agitato e sempre forte"
sotoVoce = \markup \large \italic "soto voce"
aTempo = \markup \large \italic "a tempo"
menoF = \markup { \concat { \large "(meno " \dynamic f \large ")" } }
sempreF = \markup { \large \italic sempre \dynamic f }

%
% Positions and shapes
%

slurShapeA = \shape #'(
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeB = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 1.5))
                      ) \etc
slurShapeC = \shape #'(
                        ((0 . 2.25) (0 . 2.25) (0 . 2.5) (0 . 2.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeD = \shape #'(
                        ((0 . 2.5) (0 . 2.5) (0 . 2.5) (0 . 2.5))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeE = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . 0)) \etc
slurShapeF = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1.5) (0 . -2))
                      ) \etc
slurShapeG = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeH = \shape #'(
                        ((0 . 2) (0 . 2) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                      ) \etc
slurShapeI = \shape #'((0 . 0) (0 . 0) (0 . 2) (0 . 0)) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 2.75) (0 . 2.75))
                      ) \etc
slurShapeK = \shape #'((0 . 0.5) (0 . -1) (0 . -2) (0 . 0)) \etc
slurShapeL = \shape #'(
                        ((0 . 3) (0 . 2) (0 . 0.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 3))
                      ) \etc
slurShapeM = \shape #'(
                        ((0 . 2.5) (0 . 2) (0 . 0.75) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 3))
                      ) \etc
slurShapeN = \shape #'((0 . 3) (0 . -0.5) (0 . -0.5) (0 . 3)) \etc
slurShapeO = \shape #'(
                        ((0 . 2.5) (0 . 1.5) (0 . 0.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 3))
                      ) \etc
slurShapeP = \shape #'(
                        ((0 . 2.5) (0 . 2) (0 . 0.75) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 1) (0 . 2.5))
                      ) \etc
slurShapeQ = \shape #'((0 . 0.5) (2 . 0) (0 . 0) (0 . 0)) \etc
slurShapeR = \shape #'((0 . 0) (0 . 0) (0 . 1.5) (0 . 0)) \etc
slurShapeS = \shape #'((0 . 1.5) (0 . 1.5) (0 . 0) (0 . 0)) \etc
slurShapeT = \shape #'((0 . 1.5) (0 . -0.5) (0 . 0) (0 . 0)) \etc
slurShapeU = \shape #'((0 . 0) (0 . 0) (0 . 0) (0 . 2.25)) \etc
slurShapeV = \shape #'(
                        ((0 . 2.5) (0 . 1.5) (0 . 0.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0.5) (0 . 1))
                      ) \etc
slurShapeW = \shape #'(
                        ((0 . 2.5) (0 . 1.5) (0 . 0.5) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0.75) (0 . 2.25))
                      ) \etc

tieShapeA = \shape #'((0 . 0) (0 . 0) (1.25 . 0) (1.25 . 0)) \etc
tieShapeB = \shape #'(
                       ((0 . -0.4) (0 . -0.5) (0 . -0.5) (0 . -0.4))
                       ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                     ) \etc

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
  
moveParenA = \override TextScript.extra-offset = #'(0.5 . 1.75)
moveParenB = \override TextScript.extra-offset = #'(0 . -1)
moveParenOff = \revert TextScript.extra-offset
  
moveNoteColumnA = \override Staff.NoteColumn.extra-offset = #'(0 . -3)
moveNoteColumnB = \override Staff.NoteColumn.force-hshift = 3
moveNoteColumnC = \once \override Staff.NoteColumn.force-hshift = -1
moveNoteColumnOff = \revert Staff.NoteColumn.force-hshift

rotateHairpinA = \once \override Hairpin.rotation = #'(-6 -1 0)
rotateHairpinB = \once \override Hairpin.rotation = #'(8 -1 0)

moveAccidentalA = \once \override Accidental.X-extent = #'(0 . 0)

moveNoteA = \once {
  \override Accidental.X-extent = #'(0 . 0)
  \override NoteColumn.force-hshift = #2
  \override Accidental.extra-offset = #'(2.9 . 0)
}
moveNoteB = \once \override NoteColumn.X-offset = -2

noteHeadWidthA = \once \override NoteHead.extra-spacing-width = #'(-2 . 0)
