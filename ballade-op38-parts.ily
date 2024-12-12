%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "other-variables.ily"

global = {
  \time 6/8
  \key f \major
}

rightHandUpper = \relative {
  \partial 2 c''8-\slurShapeU ( c4 c8 |
  c4 c8 c4 c8 |
  <a c>4 q8 <bf c>4 q8 |
  \voiceOne e8. d16 c8 \oneVoice <a f'>4 <f d'>8 |
  <f c'>4 <e a>8 <c f>4 <bf f' g>8 |
  \voiceOne g'4. \oneVoice <c, a'>4) <d bf'>8-\slurShapeA ^( |
  <c a'>4 <d f>8 <c a'>4 <bf bf'>8 |
  \voiceOne a'8. g16 f8 \oneVoice <c a'>4 <bf bf'>8 |
  \voiceOne a'8. g16 f8 g4. |
  
  \barNumberCheck 9
  f4.) c'->~-\slurShapeB ( |
  \oneVoice <f, a c>4 q8 <g bf c>4 q8 |
  \voiceOne e'8. d16 c8 \oneVoice <f, a f'>4 <f d'>8 |
  <f c'>4 <e a>8 <c f>4 <bf f' g>8 |
  \voiceOne g'4. \oneVoice <c, a'>4) <d bf'>8^( |
  <c a'>4 <d f>8 <c a'>4 <bf bf'>8 |
  \voiceOne a'8. g16 f8 \oneVoice <c a'>4 <bf bf'>8 |
  \voiceOne a'8. g16 f8 g4. |
  
  \barNumberCheck 17
  f4.) c'->-\tieShapeB ~-\slurShapeC ( |
  \oneVoice <e, c'>4 <d f b>8 \slashedGrace { b'-\moveArpeggioA \arpeggio } 
    <c, e a>4 <b e gs>8 |
  <c e a>4 <c e c'>8 <e g! e'>4 <e g e'>8 |
  <g e'>4 <f a d>8 \slashedGrace { d'-\moveArpeggioB \arpeggio } <e, g c>4
    <d g b>8 |
  \voiceOne c'4.) \oneVoice <g e'>4( <a f'>8 |
  <g e'>4 <f a>8 <g e'>4 <f f'>8 |
  \voiceOne e'8. d16 c8 \oneVoice <g e'>4 <f f'>8 |
  \voiceOne e'8. d16 c8 d4. |
  
  \barNumberCheck 25
  c4.) bf!->( |
  \oneVoice <g a>4 <f a c>8 <a c>4 q8 |
  \voiceOne e'8. d16 c8 \oneVoice <a f'>4 <f d'>8 |
  <f c'>4 <e a>8 <c f>4 <bf f' g>8 |
  \voiceOne g'4. \oneVoice <c, a'>4) <d bf'>8-\slurShapeD ^( |
  <c a'>4 <d f>8 <c a'>4 <bf bf'>8 |
  \voiceOne a'8. g16 f8 \oneVoice <c a'>4 <bf bf'>8 |
  \voiceOne a'8. g16 f8 g4. |
  
  \barNumberCheck 33
  c4.~ c4) a8( |
  \oneVoice <e c'>4 <f a>8 <e c'>4 <d d'>8 |
  \voiceOne c'8. b16 a8 \oneVoice <e c'>4 <d d'>8 |
  \voiceOne c'8. b16 a8 b4. |
  a4.) <a c>->-\slurShapeE ( |
  \oneVoice <d, g bf!>8. <c fs a>16 <d g>8 \voiceOne a'4.-> |
  f!4.) <a c>->( |
  \oneVoice \slashedGrace { c8-\moveArpeggioC \arpeggio } <d, g bf>8. 
    <c fs a>16 <d g>8 \voiceOne a'4.-> |
    
  \barNumberCheck 41
  f!4. a-> |
  f4. a-> |
  \oneVoice <a, f'>4 <bf e a>8 <a f'>4 <bf e a>8 |
  <a f'>4 <bf e a>8 <a f'>4 <bf e a>8 |
  \set tieWaitForNote = ##t
  \magnifyMusic #2/3 { a8~[ \moveNoteB c~ \moveNoteB f_~]
    << 
      { \voiceFour \moveNoteColumnC <a, c f>2.*1/2) } 
      \new Voice { 
        \omit TupletBracket
        \magnifyMusic #2/3 { \tuplet 3/3 8. { a'4*1/4 a a a a a } }
      } 
    >>
    \upperFermata
  } |
  \set tieWaitForNote = ##f
  \oneVoice \rotateHairpinA <f'' a>16->(\> e c a <f a> e  c a <f a> e c a)\! |
  gs16(\< <b gs'> b <d b'> d <f d'>  f <gs f'> gs <b gs'> b <d b'>)\! |
  \rotateHairpinA <f' a>16->(\> e c a <f a> e  c a <f a> e c a)\! |
  
  \barNumberCheck 49
  b16(\< <d b'> d <f d'> f <gs f'>  gs <b gs'> b <d b'> d <f d'>)\! |
  \ottava 1 <a' e'>16( c a e <e c'> a  e c <c a'> e c a |
  \ottava 0 <a e'>16 c a e <e c'> a  e c <c a'> e c a) |
  <c fs>16->( ef c fs, <fs c'> a  fs c <c a'> fs c a |
  <a fs'>16 c a fs <d' fs> fs,  <ef' fs> fs, <d' fs> fs, <c' d fs> fs,) |
  \rotateHairpinA <ef''' g>16->(\> d bf g <ef g> d  bf g <ef g> d bf g)\! |
  fs16(\< <a fs'> a <c a'> c <ef c'>  ef <fs ef'> fs <a fs'> a <c a'>)\! |
  \rotateHairpinA <ef' g>16->(\> d bf g <ef g> d  bf g <ef g> d bf g)\! |
  
  \barNumberCheck 57
  a16(\< <c a'> c <ef c'> ef <fs ef'>  fs <a fs'> a <c a'> c <ef c'>)\! |
  \ottava 1 <g' d'>16( bf g d <d bf'> g  \ottava 0 d bf <bf g'> d bf g |
  <g d'>16 bf g d <d bf'> g  d bf <bf g'> d bf g) |
  <g d'>16->( bf g d <d bf'> g  d bf <d g> e! d g,) |
  <d' bf'>16( g d bf <d g> e  d g, <d' g> e d g,) |
  <g a cs e a>4.^\cresc <a d f a>8. <a a'>16 q8 |
  <g a cs e a>4. <a d f a>4 <b f' g b>8 |
  <c! e g bf! c!>4.-> <c f af c>8. <c c'>16 q8 |
  
  \barNumberCheck 65
  <c e g bf! c>4.-> <c f af c>4 <d! af' bf! d!>8 |
  <ef g bf df ef>4.-> <ef af cf ef>8. <ef ef'>16 q8 |
  <ef g bf df ef>4.-> \after 8 \! <ef af cf ef>4 <ef' af ef'>8 |
  q4 r8 \ottava 1<ef' af ef'>4.( |
  <d! af' d!>8-.) <cf d cf'>-. <bf d bf'>-.  <af d af'>-. <gf d' gf>-.
    <ff af ff'>-. |
  \ottava 0 <ef g ef'>4.( <cf ef cf'> |
  <bf df bf'>4. <af cf af'> |
  <gf bf gf'>4. <af cf af'> |
  
  \barNumberCheck 73
  <df, bf' df>4. <ff af ff'> |
  <ef g! ef'>4. <ef af cf> |
  <df bf'>4. <cf ef af> |
  <bf df gf>4. <cf ef af> |
  <bf df>4. <af cf ff> |
  <g! bf ef>4 \rallentSpanner d'!16\startTextSpan ef  ff gf af bf cf ff, |
  ef4 d16 ef  ff gf af bf cf ff, |
  ef4 cs16 d  e fs g! gs a d, |
  
  \barNumberCheck 81
  df4 b16 c  d e f! fs g bf,\stopTextSpan |
  a4) c'8( <a c>4 q8 |
  \voiceOne e'8. d16 c8 \oneVoice <a f'>4 <f d'>8 |
  <f c'>4 <e a>8 <c f>4 <bf f' g>8 |
  \voiceOne g'4. \oneVoice <c, a'>4) <d bf'>8^( |
  <c a'>4 <d f>8^\slentando <c a'>4 <bf bf'>8 |
  \voiceOne a'8. g16 f8) \oneVoice r4 r8\fermata |
  <e c'>4-\slurShapeH ^( <f a>8 <e c'>4 <d d'>8 |
  
  \barNumberCheck 89
  \voiceOne c'8. b16 a8 \oneVoice <e c'>4 <d d'>8 |
  \voiceOne c'8. b16 a8 b4. |
  a4.) <a c>->-\slurShapeI ( |
  \oneVoice \slashedGrace { c8-\moveArpeggioC \arpeggio } <d, g bf!>8. 
    <c fs a>16 <d g>8 \voiceOne a'4.-> |
  f4.) c'->-\slurShapeJ ( |
  \oneVoice \slashedGrace { c8-\moveArpeggioC \arpeggio } <d, g bf>8. 
    <c fs a>16 <d g>8 \voiceOne a'4.-> |
  <ef fs>2. |
  q2.) |
  
  \barNumberCheck 97
  <ef gf>2.~( |
  gf4 f!8) bf4(^\> bf8\! |
  bf4 af8) gf4( gf8 |
  gf4 f8) bf4-\slurShapeV (^\> bf8\! |
  bf4 af8~ af) \oneVoice b\rest b\rest |
  <f cf'>4.^( <d af'> |
  <f cf'>2.^~ |
  \voiceOne cf'4 bf8) ef4(^\> ef8\! |
  
  \barNumberCheck 105
  ef4 df8) cf4( cf8 |
  cf4 bf8) ef4-\slurShapeW (^\stretto ef8 |
  ef4 df8) \oneVoice <g, bf cs g'>8.-\slurShapeK \((^\piuMosso <gs cs gs'>16
    <a! cs a'!>8) |
  <as e'! g! as>8.(<b e g b>16 <c e g c!>8)  <cs e bf' cs>8.(
    <d bf' d>16 <ef bf' ef>8) |
  <e! bf' cs e!>8.( <f bf f'>16 <fs bf fs'>8)  <g bf e g>8.( <gs e' gs>16
    <a e' a>8) |
  <bf bf'>8\) r16 <f,! f'!>( <ef ef'>8  <bf' bf'>8) r <g' d' g>( |
  <f d' f>4 <d bf' d>8 <bf d bf'>4 <c f a c>8) |
  <d f bf d>4( <bf d bf'>8 <g bf ef g>4 <a d fs a>8) |
  
  \barNumberCheck 113
  <bf d g bf>4( <g bf g'>8 <ef af ef'>4 <f bf d f>8 |
  \after 4 ^\riten <fs b ds fs>2.) |
  <ds fs b>2.~^( |
  \voiceOne <fs b>4. <b, e b'> |
  <b ds a'>2.~ |
  a'4 gs8 g4. |
  \oneVoice \after 4 ^\riten <g, b f' g>2. |
  <g d' f g>4. <g c e g> |
  
  \barNumberCheck 121
  q2. |
  <b f'>2.^~ |
  \voiceOne f'4 e8) a4-\slurShapeL (^\> a8\! |
  a4 g8) f4( f8 |
  f4 e8) a4-\slurShapeN (^\> a8\! |
  a4 g8~ g) d'\rest d\rest |
  \oneVoice <d, e bf'>4.^( <df g> |
  <e bf'>2.^~ |
  
  \barNumberCheck 129
  \voiceOne bf'4 a8) d4-\slurShapeO (^\> d8\! |
  d4 c8) bf4( bf8 |
  bf4 a8) d4(^\stretto d8 |
  d4 c8) \oneVoice <fs, a c fs>8.-\slurShapeQ \((^\piuMosso <g c g'!>16 
    <af c af'>8) |
  <a! ef' fs a!>8.( <bf ef fs bf>16 <b ef fs b>8)  <c ef a c>8.( <cs a' cs>16
    <d a' d>8) |
  <ds fs a ds>8.( <e! a e'!>16 < f a f'!>8)  <fs a c ef fs>8.( <g ef' g>16
    <af ef' af>8) |
  <a! ef' a!>8-.\) r16 <f,! f'!>( <ef ef'>8 <a a'>-.) r <d a' c d>->( |
  <d g bf d>4 <bf d bf'>8 <g bf d g>4 <a d a'>8) |
  
  \barNumberCheck 137
  <bf d g bf>4( <g bf e! g>8 <e! g cs e>4 <fs c' ef fs>8) |
  <g d' g>4( <e! bf' e!>8 <cs g' bf cs>4 <d g bf d>8) |
  <ds g a ds>8-. <e g a e'>-. r r4 r8 |
  <f'' a>16->(\ff\> e d a <f a> e  d a <f a>\! e d a) |
  b16(\< <cs bf'> cs <e cs'> e <g e'>  g <bf g'> bf <cs bf'> cs <e cs'>)\! |
  <f' a>16->(\> e d a <f a> e  d a <f a>\! e d a) |
  cs16(\< <e cs'> e <g e'> g <bf g'>  bf <cs bf'> cs <e cs'> e <g e'>)\! |
  \ottava 1 <f' d'>16(\sf\> a f d <d a'> f  \ottava 0 d a <a f'> d a f\! |
  
  \barNumberCheck 145
  <f d'>16 a f d <d a'> f  d a <a f'> d a f) |
  <f d'>16->^( b f d <d b'> f  d b <b f'> d b f |
  <b f'>16-> d b e, <b' f> d  b e, <gs e'> d' gs, e) |
  <f''' a>16->(\> e c a <f a> e  c a <f a>\! e c a) |
  gs16(\< <b gs'> b <d b'> d <f d'>  f <gs f'> gs <b gs'> b <d b'>)\! |
  <f' a>16->(\> e c a <f a> e  c a <f a>\! e c a) |
  b16( <d b'> d <f d'> f <gs f'>  gs <b gs'> b <d b'> d <f d'>) |
  \ottava 1 <a' e'>16( c a e <e c'> a  e c <c a'> e c a |
  
  \barNumberCheck 153
  \ottava 0 <a e'>16 c a e <e c'> a  e c <c a'> e c a) |
  <a e'>16^( c a e <e c'> a  e c <c a'> e c a |
  <a e'>16 c a e <c' a'> e  c a <a e'> c a e) |
  <c' e>16^( <b f'> <c e> <a f'> <c e> <b f'>  <c e> <a f'> <c e> <b f'> <c e>
    <a f'> |
  <c e>16 <b f'> <c e> <a f'> <c e> <b f'>  <c e> <a f'> <c e> <b f'> <c e>
    <a f'>) |
  <c ds>16^( <b fs'> <c ds> <a fs'> <c ds> <b fs'>  <c ds> <a fs'> <c ds>
    <b fs'> <c ds> <a fs'> |
  <c ds>16 <b fs'> <c ds> <a fs'> <c ds> <b fs'>  <c ds> <a fs'> <c ds>
    <b fs'> <c ds> <a fs'>) |
  <c e>16^( <b a'> <c e> <a a'> <c e> <b a'> <c e> <a a'> <c e> <b a'> <c e>
    <a a'> |
    
  \barNumberCheck 161
  <c e>16 <b a'> <c e> <a a'> <c e> <b a'> <c e> <a a'> <c e> <b a'> <c e>
    <a a'> |
  <c e>16 <b a'> <c e> <a a'> <c e> <b a'> <c e> <a a'> <c e> <b a'> <c e>
    <a a'> |
  <c e>16 <b a'> <c e> <a a'> <c e> <b a'> <c e> <a a'> <c e> <b a'> <c e>
    <a a'>) |
  <d! f>16^( <c a'> <d f> <b a'> <d f> <c a'> <d f> <b a'> <d f> <c a'> <d f>
    <b a'> |
  <d f>16 <c a'> <d f> <b a'> <d f> <c a'> <d f> <b a'> <d f> <c a'> <d f>
    <b a'>) |
  \staffDown \voiceOne e,4.\trill d\trill |
  c4.\trill b\trill |
  \staffUp 
  \bar "||"
  \key a \minor
  \oneVoice r16^\agitatoESempreForte <c' f>( q <a ds> q <c e>) r <ds b'>( q
    <b gs'> q <ds a'>) |
    
  \barNumberCheck 169
  r16 <d'! f>( q <gs, ds'> q <d' e>  \voiceOne e f f \moveAccidentalA ds! 
    \moveAccidentalA ds! e) |
  \oneVoice r16 <d e>( q <c f> q <c fs>  q <b g'!> q <bf d> q <bf e> |
  q16 <a f'!> q <a c> q <a d>) \voiceOne e'( c c b b e,) |
  \oneVoice r16 <c' f>( q <a ds> q <c e>) r <ds b'>( q <b gs'> q <ds a'>) |
  r16 <d'! f>( q <gs, ds'> q <d' e>  \voiceOne e f f \moveAccidentalA ds! 
    \moveAccidentalA ds! e) |
  \oneVoice r16 <d e>( q <c f> q <c fs>  q <b g'> q <bf d> q <bf e> |
  q16 <a f'!> q <a c> q <a d>) \voiceOne e'( c c b b e,) |
  \oneVoice r16 <a c>( <gs c> <g c> <fs c'> <f c'>  <f b> <e b'> <ds b'> <e b'>
    <f b> <e b'>) |
    
  \barNumberCheck 177
  <bf' ef>16( <g bf> <fs bf> <f bf> <e bf'> <ef bf'>  <ef a> <d a'> <cs a'>
    <d a'> <ef a> <d a'>) |
  <af' df>16-\slurShapeR ( <f af> <e af> <ef af> <d af'> <df af'>~ \voiceOne
    af'16 g8 g-> gs16->~ |
  \oneVoice <b, gs'>16 <a! a'!>->) r <a b>8->[-\slurShapeS ( <f f'>-> q16->]
    \stemDown <a b>16 <f f'> <gs b> <e e'>) |
  \stemNeutral r16 <a c>( <gs c> <g c> <fs c'> <f c'>  <f b> <e b'> <ds b'>
    <e b'> <f b> <e b'>) |
  <bf' ef>16( <g bf> <fs bf> <f bf> <e bf'> <ef bf'>  <ef a> <d a'> <cs a'>
    <d a'> <ef a> <d a'>) |
  <af' df>16^( <f af> <e af> <ef af> <d af'> <df af'>^~ \voiceOne af'16 g8 g->
    gs16->~ |
  \oneVoice <b, gs'>16 < a a'>->) r <a b>8->[^( <f f'>-> q16->] <a b>16 <f f'>
    <gs b> <e e'> |
  <a b>16[ <ds, ds'>]) <a''b>( <ds, ds'> <af' c> <ef ef'>  <g b> <ef ef'> <g b>
    <ef ef'> <g b> <d d'>) |
    
  \barNumberCheck 185
  <b cs>16[( <f f'>]) <b' cs>( <f f'> <bf d> <f f'>  <a cs> <f f'> <a cs> 
    <f f'> <a cs> <e e'>) |
  <cs ds>16[( <g g'>]) <cs' ds>( <g g'> <c e> <g g'>  <b e> <g g'> <e' fs>
    <bf bf'> <ef g> <bf bf'> |
  <d fs>16 <b! b'!> <f' a> <c c'> <e! a> <c c'>  <ef a> <c c'> <a' b> <ds, ds'>
    <a' c> <ds, ds'>) |
  \ottava 1 <f' a c>( e! <d! f a> c <b d f> a  \ottava 0 <g b d> f <e gs b> d
    <c e gs> b) |
  \ottava 1 <f'' a c>( e <d f a> c <b d f> a  \ottava 0 <g! b d> f <e gs b> d
    <c e gs> b) |
  b16( <fs' a b> \ottava 1 b <fs' a b> b, <fs! a b>)  c( <fs a c> c' <fs a c>
    c <fs, a c>) |
  \stemDown
  c16( <e a c> c' <e a c> c <e, a c>)  b( <e gs b> b' <e gs b> b <e, gs b>) |
  \rotateHairpinA <a' c e>16(\> g! <f a c> e <d f a> c  <b d f> a <g! b d> f
    <e gs b> d)\! |
  
  \barNumberCheck 193
  \rotateHairpinA <a'' c e>16(\> g! <f a c> e <d f a> c  <b d f> a <g! b d> f
    <e gs b> b)\! |
  b16( <fs' a b> b <fs' a b> b, <fs a b>)  c( <fs a c> c' <fs a c> c
    <fs, a c>) |
  cs16( <g' bf cs> cs <g' bf cs> cs, <g bf cs>)  d( <af' b d> d <af' b d>
    d, <af b d>) |
  \stemNeutral
  \grace { ds,16 <a' b ds> ds~ } <ds ds'>8 \ottava 0 r a,^( a4 a8 |
  a4 a8 a4 a8 |
  <e c'>4 <f a>8 <e c'>4 <d d'>8 |
  \voiceOne c'8. b16 a8 \oneVoice <e c'>4 <d d'>8 |
  <e a e'>4) r8 r4 r8 |
  
  \barNumberCheck 201
  r4 r8 <d e gs>4.^( |
  \slashedGrace { gs,8 } <gs d' e gs b>2. |
  <c e a>4\arpeggio) r8 r4 r8 |
  \bar "|."
}

rightHandLower = \relative {
  \partial 2 s2 |
  s2. * 2 |
  \voiceFour bf'4 bf8 s4. |
  s2. |
  <bf, e>4 <bf d>8 s4. |
  s2. |
  c4 d8 s4. |
  c4 c8 d4 <c e>8 |
  
  \barNumberCheck 9
  c4 c8 <f a>4 q8~ |
  \hideNoteHead q4 s8 s4. |
  <g bf>4 q8 s4. |
  s2. |
  <bf, e>4 <bf d>8 s4. |
  s2. |
  c4 d8 s4. |
  c4 c8 d4 <c e>8 |
  
  \barNumberCheck 17
  c4 c8 e4 e8~ |
  \hideNoteHead e4 s8 s4. |
  s2. * 2 |
  <e g>4 e8 s4. |
  s2. |
  g4 a8 s4. |
  g4 g8 a4 <f g b>8 |
  
  \barNumberCheck 25
  <e g>4 e8 <d f>4 <df g>8 |
  s2. |
  bf'4 bf8 s4. |
  s2. |
  <bf, e>4 <bf d>8 s4. |
  s2. |
  c4 d8 s4. |
  c4 c8 d4 <c e>8 |
  
  \barNumberCheck 33
  e4 e8 e4 f8 |
  s2. |
  e4 f8 s4. |
  e4 e8 <d e a>4 <d gs>8 |
  c4 <c e>8 ef4 ef8 |
  s4. <bf e!>4 q8 |
  a4 a8 ef'4 ef8 |
  s4. <bf e!>4 q8 |
  
  \barNumberCheck 41
  a4 a8 <bf e>4 q8 |
  a4 a8 <bf e>4 q8 |
  s2. * 6 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 2 |
  bf'4 bf8 s4. |
  s2. |
  <bf, e>4 <bf d>8 s4. |
  s2. |
  c4 d8 s4. |
  s2. |
  
  \barNumberCheck 89
  e4 f8 s4. |
  e4 e8 <d e a>4 <d e gs>8 |
  <c e>4 q8 ef4 ef8 |
  s4. <bf e!>4 q8 |
  a4 a8 <ef' a>4 q8 |
  s4. <bf e!>4 q8 |
  a4. c |
  a4. c |
  
  \barNumberCheck 97
  af4. c |
  df4. <c ef>
  df4. c |
  df4. <cf ef> |
  <cf d>4. d |
  s2. * 2 |
  gf4. f |
  
  \barNumberCheck 105
  gf4. f |
  gf4. <f af> |
  <e! g!>4. s |
  s2. * 5 |
  
  \barNumberCheck 113
  s2. * 3 |
  ds8. cs16 b8-\tieShapeA ~ 
    << 
      { \hideNoteHead b4. } 
      \new Voice { \voiceFour e!4 cs8 } 
    >> |
  b4 a8 s4. |
  <b e>2. |
  s2. * 2 |
  
  \barNumberCheck 121
  \hideNoteHead g2.~ |
  g4. a4(_\> a8\! |
  << { \voiceTwo a4 g8) } \new Voice { \voiceFour c4. } >> \voiceFour <b d>4. |
  c4. b |
  c4. <bf! d> |
  <bf df>4. df~ |
  \hideNoteHead df4. s4. |
  s2. |
  
  \barNumberCheck 129
  f4. <e g> |
  f4. e |
  f4. <e g> |
  <ef gf>4. s |
  s2. * 4 |
  
  \barNumberCheck 137
  s2. * 8 |
  
  \barNumberCheck 145
  s2. * 8 |
  
  \barNumberCheck 153
  s2. * 8 |
  
  \barNumberCheck 161
  s2. * 8 |
  
  \barNumberCheck 169
  s4. d'16 gs, gs \moveNoteA d'! \moveNoteA d! \noteHeadWidthA gs, |
  s2. |
  s4. a8 ds, d |
  s2. |
  s4. d''16 gs, gs \moveNoteA d'! \moveNoteA d! \noteHeadWidthA gs, |
  s2. |
  s4. a8 ds, d |
  s2. |
  
  \barNumberCheck 177
  s2. |
  s4 s16 \hideNoteHead df~  df8. c8 b16~ |
  \hideNoteHead b16 s s4 s4. |
  s2. * 2 |
  s4 s16 \hideNoteHead df,~  df8. c8 b16~ |
  \hideNoteHead b16 s s4 s4. |
  s2. |
  
  \barNumberCheck 185
  s2. * 8 |
  
  \barNumberCheck 193
  s2. * 6 |
  e4 f8 s4. |
}

rightHand = {
  \global
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \partial 2 s2 |
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  \voiceThree c4 c8 c4. |
  c4 c8 c4. |
  s2. * 6 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s4. bf'4(^\> bf8\! |
  bf4 af8) gf4( gf8 |
  gf4 f8) bf4(^\> bf8\! |
  bf4 af8) s4. |
  s2. * 2 |
  s4. ef'4(^\> ef8\! |
  ef4 df8) cf4( cf8 |
  
  \barNumberCheck 105
  cf4 bf8) ef4(^\> ef8\! |
  ef4 df8) s4. |
  s2. * 6 |
  
  \barNumberCheck 113
  s2. |
  s4 b8 b4 b8 |
  b4 b8 b4 b8 |
  s2. |
  s4. fs4 b,8 |
  s2. * 3 |
  
  \barNumberCheck 121
  s2. * 2 |
  s4. f'4-\slurShapeM ( f8 |
  f4 e8) s4. |
  s2. * 3 |
  s4. d'4(^\> d8\! |
  
  \barNumberCheck 129
  d4 c8) bf4-\slurShapeP ( bf8 |
  bf4 a8) d4(^\>\arpeggio d8\! |
  d4 c8) s4. |
}

leftHandLower = \relative {
  \partial 2 c'8( c4 c8 |
  c4 c8 c4 c8 |
  <f, c'>4 q8 q4 q8 |
  q4 q8 q4 bf8 |
  a4 <c, a'>8 <d a'>4 <g, d'>8 |
  c4 c8 <f, f'>4 <bf f'>8 |
  <c f>4 <bf f'>8 <c f>4 <d f>8 |
  <c f>4 <bf f'>8 <c f>4 <d f>8 |
  <c f>4 <c a'>8 <c bf'>4 q8 |
  
  \barNumberCheck 9
  <f a>4 q8 <f c'>4 q8 |
  q4 q8 q4 q8 |
  q4 q8 q4 bf8 |
  a4 <c, a'>8 <d a'>4 <g, d'>8 |
  c4 c8 <f, f'>4 <bf f'>8 |
  <c f>4 <bf f'>8 <c f>4 <d f>8 |
  <c f>4 <bf f'>8 <c f>4 <d f>8 |
  <c f>4 <c a'>8 <c bf'>4 q8 |
  
  \barNumberCheck 17
  <f a>4 q8 <c a'>4 q8 |
  q4 d8 e4 <e, e'>8 |
  <a e'>4 <a a'>8 <c g'>4 <c g' c>8 |
  <e c'>4 f8 g4 <g, g'>8 |
  <c g'>4 q8 <c c'>4 <f c'>8 |
  <g c>4 <f c'>8 <g c>4 <a c>8 |
  <g c>4 <f c'>8 <g c>4 <a c>8 |
  <g c>4 <g e'>8 <g f'>4 g8 |
  
  \barNumberCheck 25
  c,4 c8 d4 e8 |
  <f c'>4 q8 q4 q8 |
  q4 q8 q4 bf8 |
  a4 <c, a'>8 <d a'>4 <g, d'>8 |
  c4 c8 <f, f'>4 <bf f'>8 |
  <c f>4 <bf f'>8 <c f>4 <d f>8 |
  <c f>4 <bf f'>8 <c f>4 <d f>8 |
  <c f>4 <c a'>8 <c bf'>4 q8 |
  
  \barNumberCheck 33
  <c a'>4 q8 q4 <d a'>8 |
  <e a>4 <d a'>8 <e a>4 <f a>8 |
  <e a>4 <d a'>8 <e a>4 <f a>8 |
  <e a>4 <e c'>8 e4 e8 |
  a,4 a8) fs4_( fs8 |
  g8. a16 bf8 c4 <c, c'>8 |
  <f! c'>4 f8 fs4 fs8 |
  g8. a16 bf8 c4 <c, c'>8 |
  
  \barNumberCheck 41
  \voiceTwo f!8. e16 d8 c4 c8 |
  f8. e16 d8 c4 c8 |
  \oneVoice <f c'>4 <c c'>8 <f c'>4 <c c'>8 |
  <f c'>4 <c c'>8 <f c'>4 <c c'>8 |
  \set tieWaitForNote = ##t
  \grace { 
      << { f,8[ } \new Voice { \stemDown f4*1/2 } >> \stemUp f'8~ c'~ f_~] 
    } \magnifyMusic #2/3 { <f, c' f>2.) } \lowerFermata |
  \set tieWaitForNote = ##f
  \oneVoice \rotateHairpinB <a, a'>8_(\< <e' e'> <b' b'>  <c c'>4)\! r8 |
  f16( d a gs' f a,  b' f a, d') r8 |
  \rotateHairpinB <a,, a'>8_(\< <e' e'> <b' b'>  <c c'>4)\! r8 |
  
  \barNumberCheck 49
  gs'16( f a, b' f a,  d' f, a, f'') r8 |
  <a,,, a'>8( <e' e'>\< <gs gs'>  <b b'> <a a'> <b b'> |
  <d d'>8 <c c'> <ds ds'>  <f f'>-> <e e'>)\! r |
  <a,, a'>8(\< <c c'> <d d'>  <ef ef'>4.~\! |
  q4\> <d d'>8  <a a'> <bf bf'> <a a'>)\! |
  \rotateHairpinB <g g'>8(\< <d' d'> <a' a'>  <bf bf'>4)\! r8 |
  \stemDown ef16( c g fs' ef g,  a' ef g, c') r8 |
  \stemNeutral \rotateHairpinB <g,, g'>8(\< <d' d'> <a' a'>  <bf bf'>4)\! r8 |
  
  \barNumberCheck 57
  fs'16( ef g, a' ef g,  c' ef, g, ef'') r8 |
  <g,,, g'>8( <d' d'>\< <fs fs'>  <a a'> <g g'> <a a'> |
  <c c'>8 <bf bf'> <cs cs'>  <ef ef'>-> <d d'>)\! r |
  <e,,! e'!>8(\< <g g'> <a a'> <bf bf'>4.)\! |
  <e, e'>8(\< <g g'> <a a'> <bf bf'>4.)\! |
  \moveParenA \after 16 _\markup "(" <a a'>8-\slurShapeF ( gs'16\< a b cs  d\>
    e f e d \moveParenB \after 32.. _\markup ")" bf\! |
  \moveParenA \after 16 _\markup "(" <a, a'>8 gs'16\< a b cs  d\> e f e d 
    \moveParenB \after 32.. _\markup ")" df\! \moveParenOff |
  <c,! c'!>8 b'16 c d! e  f g af g f df |
  
  \barNumberCheck 65
  <c, c'>8 b'16 c d! e  f g af g f ff |
  <ef, ef'>8 d'!16 ef f g  af bf cf bf af ff |
  <ef, ef'>8 d'!16 ef f! g  af bf cf bf af ef |
  ff,8-.) r16 cf'-\slurShapeG ( ef af  cf af ef cf ef'8-.) |
  ff,,8-. r16 cf'16( d! af'  cf af d, cf d'8-.) |
  <ef,, ef'>8 d16( ef f g  af bf cf df ef ff |
  ef,8) d!16( ef f! g  af bf cf df ef ff |
  ef,8) d!16( ef f! g  af bf cf df ef ff |
  
  \barNumberCheck 73
  ef,8) d!16( ef f! g  af bf cf df ef ff |
  ef,8) d!16( ef f! g  af bf cf df ef ff |
  ef,8) d!16( ef f! g  af bf cf df ef ff |
  ef,8) d!16( ef f! g  af bf cf df ef ff |
  ef,8) d!16( ef f! g  af bf cf df ef ff |
  ef,4) r8 <af' cf>4.( |
  <g! bf>4. <af cf> |
  <g! bf>4. <fs a> |
  
  \barNumberCheck 81
  <f! af>4. <e g>4 c8) |
  f,4 c''8 <f, c'>4 q8 |
  q4 q8 q4 bf8 |
  a4 <c, a'>8 <d a'>4 <g, d'>8 |
  c4 c8 <f, f'>4 <bf f'>8 |
  <c f>4 <bf f'>8 <c f>4 <d f>8 |
  <c f>4 <bf f'>8 r4 r8\fermata |
  <c a'>4 <d a'>8 <e a>4 <f a>8 |
  
  \barNumberCheck 89
  <e a>4 <d a'>8 <e a>4 <f a>8 |
  <e a>4 <e c'>8 e4 e8 |
  a,4 a8 fs4 fs8 |
  g8. a16 bf8 c4 <c, c'>8 |
  <f c'>4 f8 fs4 fs8 |
  g8. a16 bf8 c4 c8 |
  c8. bf16 a8 ef'4( ef8 |
  c8. bf16 a8) ef'4( ef8 |
  
  \barNumberCheck 97
  c8. bf16 af8)~ \voiceTwo af4.~ |
  af2.~ |
  af2.~ |
  af4. \oneVoice gf'4( gf8 |
  gf4 f8) cf'4( cf8 |
  af8. gf16 f8) cf'4( cf8 |
  af4) \voiceTwo df,8~ df4.~ |
  df2.~ |
  
  \barNumberCheck 105
  df2.~ |
  df4. \oneVoice cf'4( cf8 |
  cf4 bf8) <e,! e'!>4( q8 |
  <cs cs'>8. <b b'>16 <as as'>8)  <g' g'>4( q8 |
  <e! e'!>8. <d d'>16 <cs cs'>8) \clef treble <cs' cs'> r \clef bass
    <g,! g'!>( |
  q8. <f! f'!>16 <ef ef'>8  <bf' bf'>8) r <bf, bf'>~( |
  q4 <d d'>8 <g g'>4 <f f'>8) |
  <bf, bf'>8.( <a a'>16 <g g'>8 <ef' ef'>4 <d d'>8) |
  
  \barNumberCheck 113
  <g, g'>8.( <f f'>16 <ef ef'>8 <c' c'>4 <bf bf'>8) |
  <a a'>2.~_( |
  \voiceTwo a'2.~ |
  a4. gs |
  fs2. |
  \oneVoice e4.~ e4) f!8( |
  g4 g8 g4 g8 |
  b8. a16 g8 c4 a8 |
  
  \barNumberCheck 121
  g4 e8 c4 a8 |
  g2.) |
  \voiceTwo g'2.~ |
  g4. \oneVoice a'4(_\> a8 |
  a4 g8)\! f4( f8 |
  f4 e8) bf'4( bf8 |
  g8. f16 e8) bf'4( bf8
  g4) \voiceTwo c,8~ c4.~ |
  
  \barNumberCheck 129
  c2.~ |
  c4. c~\arpeggio |
  c4. \oneVoice bf'4( bf8 |
  bf4 a8) <ef ef'>4( q8 
  <c c'>8. <bf bf'>16 <a a'>8) <fs' fs'>4( q8 |
  <ds ds'>8. <cs cs'>16 <c c'>8) \clef treble <c' c'> r \clef bass 
    <gf, gf'>^( |
  q8. <f! f'!>16 <ef ef'>8 <a a'>8-.) r <fs, fs'>8( |
  <g g'>4 <d' d'>8 <g g'>4 <f! f'!>8) |
  
  \barNumberCheck 137
  <e! e'!>8.( <d d'>16 <cs cs'>8 <bf' bf'>4-> <a a'>8) |
  <bf, bf'>8.( <a a'>16 <g g'>8 <e' e'>4-> <d d'>8) |
  <cs cs'>4( <c c'>8 <b b'> <bf bf'> <a a'>) |
  \rotateHairpinB <a a'>8(\< <d d'> <e e'> <f f'>4)\! r8 |
  g'16( e a, bf' g a,  cs' g a, e'') r8 |
  \rotateHairpinB <a,,, a'>8(\< <d d'> <e e'> <f f'>4)\! r8 |
  bf'16( g a, cs' g a,  e'' g, a, g'') r8 |
  <a,,, a'>8(\< <d d'> <e e'>  <g g'> <f f'> <gs gs'> |
  
  \barNumberCheck 145
  <b b'>8 <a a'> <cs cs'>  <e e'> <d d'>)\! r |
  \rotateHairpinB <gs,, gs'>8(\< <d' d'> <e e'> <f f'>4)\! r8 |
  <gs, gs'>4.~( q8 <c c'>\> <b b'>)\! |
  \rotateHairpinB <a a'>8_(\< <e' e'> <b' b'>  <c c'>4)\! r8 |
  f16( d a gs' f a,  b' f a, d') r8 |
  \rotateHairpinB <a,, a'>8_(\< <e' e'> <b' b'>  <c c'>4)\! r8 |
  gs'16( f a, b' f a,  d' f, a, f'') r8 |
  <a,,, a'>8( <e' e'>\< <gs gs'>  <b b'> <a a'> <b b'> |
  
  \barNumberCheck 153
  <d d'>8 <c c'> <ds ds'>  <f f'> <e e'>)\! r |
  <g,, g'>2.( |
  <fs fs'>4. <f f'> |
  \after 4 _\marcatoMarkup <e e'>4.) <e' e'>4( q8 |
  <c c'>8. <b b'>16 <a a'>8 <e' e'>4) r8 |
  <e, e'>4.-> <e' e'>4( q8 |
  <c c'>8. <b b'>16 <a a'>8 <e' e'>4) r8 |
  <e, e'>4.-> <e' e'>4_( q8 |
  
  \barNumberCheck 161
  q8. <d d'>16 <c c'>8 <a' a'>4 <f f'>8 |
  <e e'>4 <c c'>8 <a a'>4 <b b'>8 |
  <c c'>2.->) |
  \grace { ds16 e } e2.\startTrillSpan |
  \after 16*11 \stopTrillSpan e2. |
  \voiceTwo e4.\trill d\trill |
  c4.\trill b\trill |
  \key a \minor
  \oneVoice <a a'>8-.\noBeam <a' f'>( <c e>) <f,, f'>-.\noBeam <b' g'>( f') |
  
  \barNumberCheck 169
  <e, e'>8-.\noBeam <e' e'>( <b' d!>  <e, e'> <b' d> <e, e'>) |
  <a, a'>8-.\noBeam <a' e'>( <d, d'>)  <g,! g'!>-.\noBeam <g' d'>( <c, c'>) |
  <f, f'>8-.\noBeam <f' c'>( <f b!>  <e c'> <e fs> <e gs>) |
  <a, a'>8-.\noBeam <a' f'!>( <c e>)  <f,, f'>-.\noBeam <b' g'!>( f') |
  <e, e'>8-.\noBeam \clef treble <e' e'>( <b' d!> <e, e'> <b' d> <e, e'>) |
  <a, a'>8-.\noBeam <a' e'>( <d, d'>)  <g,! g'!>-.\noBeam <g' d'>( <c, c'>) |
  <f, f'>8-.\noBeam <f' c'>( <f b!>)  <e, e'>-.\noBeam <e' fs>( <e gs>) |
  \clef bass <a,, a'>8\noBeam \clef treble <a' a'>( <c f!>) \clef bass
    <gs, gs'>\noBeam \clef treble <gs' gs'>( <b e>) |
    
  \barNumberCheck 177
  \clef bass <g,! g'!>8\noBeam \clef treble <g'! g'!>( <bf ef>) \clef bass
    <fs, fs'>\noBeam <fs' fs'>( <a d>) |
  <f,! f'!>8\noBeam <f' f'!>( <af df>)  <e,! e'!>\noBeam <e' e'>( <d! f'> |
  <c e'>8)\noBeam <d, d'> <d' a' b>  <d, d'> <d' a' b> <e, e'> |
  <a, a'>8\noBeam <a' a'>( <c f!>)  <gs, gs'>\noBeam <gs' gs'>( <b e>) |
  <g,! g'!>8\noBeam <g' g'!>( <bf ef>)  <fs, fs'>\noBeam <fs' fs'>( <a d>) |
  <f,! f'!>8\noBeam <f' f'!>( <af df>)  <e,! e'!>\noBeam <e' e'!>( <d! f'> |
  <c e'>8)\noBeam <d, d'>\noBeam <d' b'> <d, d'>\noBeam <d' b'> 
    <e, e'>\noBeam |
  <f f'>8\noBeam <f' f'>( <fs fs'>  <g g'>) <g, g'> <g' g'> |
  
  \barNumberCheck 185
  <g, g'>8\noBeam <g' g'>( <gs gs'>  <a a'>) <a, a'> <a' a'> |
  <a, a'>8\noBeam <a' a'>( <as as'>  <b b'> <c c'> <cs cs'> |
  <d d'>8 <ds a' c ds> <e a c e>  <f a c f> <fs a b fs'> <f a c f>) |
  <e,, e'>8( <a a'>\< <b b'>  <d d'>)\! <f f'>(\> <e e'>)\! |
  <e, e'>8( <a a'>\< <b b'>  <d d'>)\! <f f'>(\> <e e'>)\! |
  <ds ds'>8 <a'' b fs'> r  <ds,, ds'> <a'' c fs> r |
  <e, e'>8 \clef treble <c'' e a> r \clef bass <e,, e'> \clef treble 
    <b'' e gs> r |
  \clef bass <a,, a'>8(\< <c c'> <d d'>\!  <f f'>) <f' f'>(\> <e e'>)\! |
  
  \barNumberCheck 193
  <a,, a'>8(\< <c c'> <d d'>\!  <f f'>) <f' f'>(\> <e e'>)\! |
  <ds, ds'>8 <ds' a' b fs'>->\arpeggio r <ds, ds'> <ds' a' c fs>->\arpeggio r |
  <e, e'>8 \clef treble <bf'' cs g'> r \clef bass <f,! f'!> \clef treble
    <b' d af'> r |
  \clef bass <f a! b ds a'!>8 r a( a4 a8 |
  a4 a8 a4 a8 |
  <e a>4 <d a'>8 <e a>4 <f a>8 |
  <e a>4 <d a'>8 <e a>4 <f a>8 |
  <e c'>4) r8 r4 r8 |
  
  \barNumberCheck 201
  r4 r8 <e b'>4.-\slurShapeT _( |
  <e,, e'>2. |
  <a a' e'>4)\arpeggio r8 r4 r8 |
}

leftHand = {
  \global
  \clef bass
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  % \override TextSpanner.Y-offset = 0
  \override Hairpin.to-barline = ##f
  \override Hairpin.after-line-breaking = ##f
  \partial 2 \tag layout { s2-\tweak Y-offset -5.5 ^\sotoVoce } 
    \tag midi { s2\p } |
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s4. s\> |
  s4. s4 s8\! |
  s4.\< s4 s8\! |
  s4.\> s4 s8\! |
  s4. s\pp |
  s2. * 3 |
  
  \barNumberCheck 25
  s4. s4\> s8\! |
  s2. * 6 |
  s4 s16 s8.\< s8 s\! |
  
  \barNumberCheck 33
  s4.\> s8 s4\! |
  s2. * 3 |
  s4. s\> |
  s4 s8\! s4. |
  s4. s\> |
  s4 s8\! s4. |
  
  \barNumberCheck 41
  s2. * 2 |
  \smorzandoSpanner s2.\startTextSpan |
  s4. s4 s8\stopTextSpan |
  s2. |
  s2.\ff |
  s2. * 2 |
  
  \barNumberCheck 49
  s2. |
  s4\sf\> s16 s\! s4. |
  s2. * 6 |
  
  \barNumberCheck 57
  s2. |
  s4.\sf\> s8 s4\! |
  s2. * 2 |
  s4. s4-\tweak Y-offset -2 \> s16 s\! |
  s2.^\menoF |
  s2. * 2 |
  
  \barNumberCheck 65
  s4. s4\< s16 s\! |
  s2. * 2 |
  s4.\ff s4\> s8\! |
  s2. |
  s8 s4\dim s4. |
  s2. * 2 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s4. s4 s16 s\! |
  s2.\pp |
  s2. * 6 |
  
  \barNumberCheck 89
  s2. |
  s4. s4\> s8\! |
  s4. s\> |
  s8. s16\! s8 s4. |
  s4. s\> |
  s2.\! |
  s4.\> s\! |
  s4.\> s\! |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. |
  s4. s\cresc |
  s4. s\f |
  s2.\cresc |
  s2. |
  s4. s4 s8\ff |
  s2. * 2 |
  
  \barNumberCheck 113
  s2. |
  s4\sf s8\p\> s4 s8\! |
  s2. * 6 |
  
  \barNumberCheck 121
  s2. * 8 |
  
  \barNumberCheck 129
  s2. * 2 |
  s4. s\< |
  s4.\! s\f |
  s2.\cresc |
  s2. |
  s4. s4 s8\ff |
  s2. |
  
  \barNumberCheck 137
  s2. * 2 |
  s4 s8^\accel s4. |
  s2. * 5 |
  
  \barNumberCheck 145
  s2. * 8 |
  
  \barNumberCheck 153
  s2. |
  s4. s\cresc |
  s4. s4 s16 s\! |
  \tag layout { s2.^\sempreF } \tag midi { s2.\f } |
  s2. * 4 |
  
  \barNumberCheck 161
  s4. s\sfz |
  s2. * 2 |
  s2.\ff |
  s2. |
  s2.\< |
  s4. s\! |
  s2. |
  
  \barNumberCheck 169
  s2. * 8 |
  
  \barNumberCheck 177
  s2. * 6 |
  s4. s8 s\> s16 s\! |
  s16-\tweak X-offset -1 \parenthesize\mf\> s\! s4\cresc s4. |
  
  \barNumberCheck 185
  s2. * 2 |
  s4. s4 s16 s\! |
  s4.\ff\> s4 s16 s\! |
  s4.\> s4 s16 s\! |
  s2. * 3 |
  
  \barNumberCheck 193
  s2. |
  s2.\cresc |
  s4. s4 s16 s\! |
  s4\sf s8\pp s4. |
  s2. * 4 |
  
  \barNumberCheck 201
  s2. |
  s2.\> |
  s2.\!
}

tempi = {
  \tempo "Andantino" 4. = 66
  \partial 2 s2 |
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 2 |
  \set Score.tempoHideNote = ##t
  \tempo 4. = 60
  s2. |
  \tempo 4. = 56
  s2. |
  \tempo 4. = 40
  s4. s4 s16. \tempo 4. = 5 s32 |
  \set Score.tempoHideNote = ##f
  \tempo "Presto con fuoco" 4. = 84
  s2. * 3 |
  
  \barNumberCheck 49
  s2. * 8 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 5 |
  \set Score.tempoHideNote = ##t
  \tempo 4. = 80
  s2. |
  \tempo 4. = 76
  s2. |
  \tempo 4. = 72
  s2. |
  
  \barNumberCheck 81
  \tempo 4. = 69
  s2. |
  s4 \tempo "Tempo I" 4. = 66 s8 s4. |
  s2. * 3 |
  \tempo 4. = 60
  s2. |
  s4. \tempo 4. = 40 s4. |
  \tempo 4. = 66
  s2. |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 2 |
  s4. \tempo 4. = 72 s |
  s2. * 5 |
  
  \barNumberCheck 113
  s2. |
  \tempo 4. = 69
  s2. |
  \tempo "Tempo I" 4. = 66
  s2. * 4 |
  s4 \tempo 4. = 60 s8 s4. |
  s2. |
  
  \barNumberCheck 121
  s2. |
  \tempo 4. = 66
  s2. * 7 |
  
  \barNumberCheck 129
  s2. * 3 |
  s4. \tempo 4. = 72 s |
  s2. * 4 |
  
  \barNumberCheck 137
  s2. * 2 |
  s4. \tempo 4. = 78 s |
  \set Score.tempoHideNote = ##f
  \tempo "Presto con fuoco" 4. = 84
  s2. * 5 |
  
  \barNumberCheck 145
  s2. * 8 |
  
  \barNumberCheck 153
  s2. * 8 |
  
  \barNumberCheck 161
  s2. * 8 |
  
  \barNumberCheck 169
  s2. * 8 |
  
  \barNumberCheck 177
  s2. * 8 |
  
  \barNumberCheck 185
  s2. * 8 |
  
  \barNumberCheck 193
  s2. * 3 |
  \set Score.tempoHideNote = ##t
  s4 \tempo "Tempo I" 4. = 66 s8 s4. |
}

pedal = {
  \partial 2 s2\sd |
  s2. |
  s4 s16 s\su s4. |
  s2. * 6 |
  
  \barNumberCheck 9
  s4. s\sd |
  s4 s8\su s4. |
  s2. * 6 |
  
  \barNumberCheck 17
  s4. s\sd |
  s8 s4\su s4. |
  s4. s\sd |
  s2.\su |
  s2. * 4 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s4.\sd s8 s4\su |
  s2. * 7 |
  
  \barNumberCheck 41
  s2. * 5 |
  s8.-\tweak Y-offset -2 \sd s-\tweak Y-offset -2 \su s4. |
  s4.\sd s4 s16 s\su |
  s8.-\tweak Y-offset -2 \sd s-\tweak Y-offset -2 \su s4. |
  
  \barNumberCheck 49
  s4.\sd s4 s16 s\su |
  s4\sd s8\su s4. |
  s2. * 3 |
  s8.-\tweak Y-offset -2 \sd s-\tweak Y-offset -2 \su s4. |
  s4.\sd s4 s16 s\su |
  s8.-\tweak Y-offset -2 \sd s-\tweak Y-offset -2 \su s4. |
  
  \barNumberCheck 57
  s4.\sd s4 s16 s\su |
  s4-\tweak Y-offset 2 \sd s8-\tweak Y-offset 2 \su s4. |
  s2. |
  s8.\sd s\su s4. |
  s8.\sd s\su s4. |
  s4\sd s16 s\su s4. |
  s4\sd s16 s\su s4. |
  s4\sd s16 s\su s4. |
  
  \barNumberCheck 65
  s4\sd s16 s\su s4. |
  s4\sd s16 s\su s4. |
  s4\sd s16 s\su s4. |
  s4.\sd s4 s8\su |
  s4.\sd s4 s8\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s4.\sd s\su |
  
  \barNumberCheck 73
  s4.\sd s\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s4.\sd s\su |
  s2. * 3 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 8 |
  
  \barNumberCheck 113
  s2. |
  s2.\sd |
  s2. |
  s8. s\su s4. |
  s4.\sd s4 s8\su |
  s2. |
  s4.\sd s4 s8\su |
  s2. |
  
  \barNumberCheck 121
  s2. |
  s2.-\tweak Y-offset -1 \sd |
  s2.\su |
  s2. * 2 |
  s4. s\sd |
  s2. |
  s8 s4\su s4. |
  
  \barNumberCheck 129
  s2. * 8 |
  
  \barNumberCheck 137
  s2. * 3 |
  s8.-\tweak Y-offset -2 \sd s-\tweak Y-offset -2 \su s4. |
  s4.\sd s4 s16 s\su |
  s8.-\tweak Y-offset -2 \sd s-\tweak Y-offset -2 \su s4. |
  s4.\sd s4 s16 s\su |
  s8.\sd s\su s4. |
  
  \barNumberCheck 145
  s2. * 3 |
  s8.-\tweak Y-offset -2 \sd s-\tweak Y-offset -2 \su s4. |
  s4.\sd s4 s16 s\su |
  s8.-\tweak Y-offset -2 \sd s-\tweak Y-offset -2 \su s4. |
  s4.\sd s4 s16 s\su |
  s8.-\tweak Y-offset 2 \sd s-\tweak Y-offset 2 \su s4. |
  
  \barNumberCheck 153
  s4.-\tweak Y-offset 2 \sd s4 s16 s-\tweak Y-offset 2 \su |
  s4.-\tweak Y-offset 1 \sd s4 s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.-\tweak Y-offset -2 \sd s4 s16 s-\tweak Y-offset -1 \su |
  s4. s4\sd s16 s\su |
  s4.-\tweak Y-offset -2 \sd s4 s16 s\su |
  s4. s4\sd s16 s\su |
  s4.-\tweak Y-offset -2 \sd s4 s16 s\su |
  
  \barNumberCheck 161
  s4. s4\sd s16 s\su |
  s2. * 2 |
  s2.\sd |
  s4. s4 s16 s-\tweak Y-offset 5 \su |
  s4\sd s8\su s4\sd s8\su |
  s4-\sd s8\su s4\sd s8\su |
  % key of a minor
  s4-\tweak Y-offset 3 \sd s8-\tweak Y-offset 3 \su s4-\tweak Y-offset 2 \sd
    s8-\tweak Y-offset 2 \su |
  
  \barNumberCheck 169
  s4.\sd s4 s16 s\su |
  s4\sd s8\su s4\sd s8\su |
  s4\sd s8\su s4. |
  s4\sd s8\su s4\sd s8\su |
  s4.\sd s4 s16 s\su |
  s4\sd s8\su s4-\tweak Y-offset -1.5 \sd s8\su |
  s4\sd s8\su s4. |
  s4\sd s8\su s4\sd s8\su |
  
  \barNumberCheck 177
  s4\sd s8\su s4\sd s8\su |
  s4\sd s8\su s8.\sd s\su |
  s8 s4\sd s8. s\su |
  s4\sd s8\su s4-\tweak Y-offset -2 \sd s8\su |
  s4-\tweak Y-offset -2 \sd s8\su s4-\tweak Y-offset -2 \sd s8\su |
  s4-\tweak Y-offset -2 \sd s8\su s8.-\tweak Y-offset -2 \sd s\su |
  s8 s4-\tweak Y-offset -2 \sd s8. s\su |
  s8.-\tweak Y-offset -1 \sd s\su s4\sd s8\su |
  
  \barNumberCheck 185
  s8.\sd s\su s4\sd s8\su |
  s8.-\tweak Y-offset 2 \sd s-\tweak Y-offset 2 \su s4. |
  s2. |
  s8.\sd s\su s4. |
  s8.\sd s\su s4. |
  s4\sd s8\su s4\sd s8\su |
  s4\sd s8\su s4\sd s8\su |
  s8.\sd s\su s4. |
  
  \barNumberCheck 193
  s8.\sd s\su s4. |
  s4-\tweak Y-offset -2 \sd s8\su s4-\tweak Y-offset -2 \sd s8\su |
  s4\sd s8\su s4\sd s8\su |
  s2.\sd |
  s4. s4 s8\su |
  s2. * 3 |
  
  \barNumberCheck 201
  s4. s\sd |
  s2. |
  s2.\su |
}

forceBreaks = {
  % page 1
  \partial 2 s2\noBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  
  % page 2
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  % page 3
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 4
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  
  % page 5
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\pageBreak
  
  % page 6
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  % page 7
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 8
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  % page 9
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
}
