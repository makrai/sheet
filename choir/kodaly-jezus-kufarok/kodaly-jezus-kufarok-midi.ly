% Lily was here -- automatically converted by /usr/bin/midi2ly from kodaly-jezus-kufarok.mid
\version "2.14.0"
\language "deutsch"

\layout {
  \context {
    \Voice
      \remove "Note_heads_engraver"
      \consists "Completion_heads_engraver"
      \remove "Rest_engraver"
      \consists "Completion_rest_engraver"
  }
}

TimeAndTempo = {
  \tempo "Andante" 4 = 100
  \time 4/4
  \partial 2
  \skip 2
  \skip 1*5
  \skip 2. \skip 8

  \tempo "Animato" 4 = 120
  \skip 8
  \skip 1*1
  \time 4/4 \skip 1*1
  \skip 1*1

  \tempo "Più mosso" 4 = 120
  \time 5/4 \skip 4*5
  \time 4/4 \skip 1
  \time 5/4 \skip 4*5
  \time 3/4 \skip 2.
  \time 5/4 \skip 4*15
  \time 6/4 \skip 1.  | % 19
  \time 5/4 \skip 4*5 | % 20
  \time 4/4 \skip 1 | % 21
  \time 2/4

  \tempo "Con moto" 4 = 120
  \set Staff.beatStructure = #'(4)
  \skip 2*45
  \tempo "poco sost." 4 = 120
  \skip 2*2

  \tempo "a tempo" 4 = 75
  \skip 2*17

  % 83. És a pénzváltók
  \time 3/4 \skip 4*3 \time 2/4 \skip 4*2
  \time 3/4 \skip 4*3 \time 2/4 \skip 4*2
  \time 3/4 \skip 4*3 \time 2/4 \skip 4*2
  \time 3/4 \skip 4*3 \time 2/4 \skip 4*2
  \time 3/4 \skip 4*3 \time 2/4 \skip 4*2
  \time 3/4 \skip 4*3 \time 2/4 \skip 4*2
  \skip 2*28

  | % 125
  \time 3/4
  \skip 2.*7

  % 132
  \time 2/4
  \skip 2*2

  | % 134
  \time 3/4
  \skip 2.*4

  % 138
  \time 4/4
  \skip 1*10
  \tempo "Largo" 4 = 45
  \skip 1*10
  \tempo "Più mosso. (Andante con moto.)" 4 = 81
  \skip 1*12
  \tempo "rallent."
  \skip 1*4
  \tempo "rallent."
  \skip 1*1
  \tempo "Lento" 4 = 66
  \time 3/4
  \skip 2.*2
  \time 4/4
}

Key = {
  \key d \minor \skip 4*85
  \key c \minor \skip 2*79
  \key f \major \skip 2*27
  \key a \minor
}

Soprano = \relative c {
  \voiceOne
  % 1. Elközelge húsvet és felméne Jézus Jeruzálembe a templomba
  d'8. d16 d8. d16 a'4 a4*256/384 r4*512/384
  a4 d4 d8. c16 d4 a4 f'4. d8 d4 c4 a4 r c2 d2 d2 d2. r8

  % 8. Animato. És ott találá ökrök, juhok, galambok árusait,
  d,8 e16 f16 g16 f16 e8 d8 b'4 a4 c8 g4 c8 e8 d4 c8 a4 g8 d8 e8 r r

  % 11. Più mosso. És ott terpeszkedtek a pénzváltók.
  g8 c4 b4 a4 g4 f8 g8 a16 g16 f16 e16 d4 c r r1*5/4 r1*3/4 r1*5/4 r8

  % 15. és ott terpeszkedtek a pénzváltók.
  d8 a'4 g4 f4 es4 d8 e8 f16 g16 a16 b16 c4 d2

  % 18
  b4 a4 g4 c16 b16 a16 g16 f4*256/384 r4*320/384

  % 19
  c'8 f4 es4 d4 c4 b8 c8 d16 c16 b16 a16 g4 fis2 r2*14 r4

  % 35. És kötélböl ostort fonván kihajtá öket a templomból,
  d4 f8 e4 d8 b'4 b4 a4 g4 e'8 d4 a8 g4 f8  g8 a4 g4 d4 \breathe

  % 41. Kavarog
  d8 e8 fis8 g8 a8 d,8 r4
  d8 e8 fis8 g8 a4 % \breathe ?
  d,8 e8 fis8 g8 a4 d,8 r

  g8 a8 b8 c8 d8 r
  g,8 r8 g8 a8 b8 c8 d8 g,4. % \breathe ?
  g8 a8 b8 c8 d8 r8

  | % 53. És kötélböl ostort fonván kihajtá öket a templomból,
  g,4 as8 g4 f8 des'4 des4 c4 b4
  g'8 f4 c8 \tempo "4. oldal" b4 as8 b8 c4 b4 f4. r8

  | % ... kihajtá a templomból,
  fis2\tenuto as2\tenuto b2\tenuto c2\tenuto des2\tenuto es8 f8 fis4 f4 \breathe

  | % 66. Szalad a sok árus,
  b,8 c8 d8 es8 f4 b,8 r
  b8 c8 d8 es8 f4 \breathe % ?
  b,8 c8 d8 es8 f8 b,4.
  b8 c8 des8 es8 f4 b,8 r
  b8 c8 des8 es8 f8 b,4.~b8 a b8 c8 des8 c8 des8 es8 f8 e8 f8 g8 f8 e8 f8 g8
  f8 e8 f8 g8 f8 e8 f8 g8 as8 r r4 \tempo "5. oldal" r

  % Soprano
  % 83. És a pénzváltók pénzét szerteszórá,
  as,8. b16 c16 b16 as16 g16 f4 es4 as4 es'4
  f8. c16 g16 f16 g16 as16 b16 as16 g16 f16 c4 r r2*3/2 r2 r2*3/2 r4

  b'8. c16 d16 c16 b16 a16 g4 f4 b4 f'4
  g8. d16 a16 g16 a16 b16 c16 b16 a16 g16 d4 \breathe

  % 97. És asztalaikat feldönté.
  d'4 e4 e8 e d8 e4. f4 d e2 \breathe
      e4 e8 e \tempo "6. oldal" d8 e4. g4 d e2 \breathe
      e4 e8 e d8 e4. a4 d, a r r

  % 110. És a pénzváltók sok pénzét szerteszórá,
  f8. g16 a16 g16 f16 e16 d4 c4 g'4 f4 c'4 d8. a16 e16 d16 e16 f16 g16 f16 e16
  d16 a4 r

  % 116. És kötélböl ostort fonván kihajtá öket a templomból,
  a'4 b8 a4 g8 es'4 es4 d4 c4
  a'8 g4 d8 c4 b8 c8 d4 c4 g2 r2 r r2*3/2 r r4 r

  % 127. Vigyétek el ezeket innét!
  \tuplet 3/2 {a16 a8. a8} r4 h r r
  \tuplet 3/2 {a8 a a} r4 \tempo "7. oldal" r g4 g4 r4 r
  a r g r f r g8 f e d r4 cis d e8 g e2
  r4 e8 e e e a4 a2 r4 r1

  | % 140. Írva vagyon: az én házam imádságnak háza Minden népek közt
  a2. a4 b4 a2 r4 a8 a4. <d a>4 <d a>4 a8 b4. c4 b4 a2 a4 r
  a4 b4 c4 d4 a4 r r2

  % mivé tettétek?
  b8 c4. d8 d4 e8

  % Rablók
  r4 <a f>8 <a f>8~2 r4 <gis e>8 <gis e>8~2 r4
  <g es>8 <g es>8~2 r4 <fis d>8 <fis d>8~2 r4

  % 151
  <f des>8 8~<f des>4
  <es c>8 8~<es c>4
  <b des>8 <des b>8~2 r4 <c as>8 <c as>8~2
  \tempo "8. oldal"
  r4 <b fis>8 <b fis>8~2
  r4 <a f>8 <a f>8~2 r4 <a f>8 <a f>8~2 r1*4

  % 161 Più mosso. (Andante con moto.) Rablók!
  <a f>4 <a f>2. r2 r4 <f es>8 <f es>8~2 r4 <es a>8 <es a>8~2. r4

  % 165
  r4 <a es>8 8~<a es>4 r r <g des>8 <g des>8~2
  r4 <f c>8 8~<f c>4 r
  r4 <e h>8 <e h>8~2
  r4 <e c>8 <e c>8~2
  r4 <es h>8 <es h>8~2~8 r8 r4 r2 r2

  | % 123 Mivelhogy az egész SOKASÁG RAJTA CSÜGG VALA
  e8 e8 e8 e8 a8 a4. c8 c8 c4 f4. d8 c4 d8 d~2 r

  % úgy hallgatá Öt
  d2 f2. <f des>4 <g es>1 <a fis d>
  % Ebben a fájlban az utolsó három ütemben több hang van,
  % mint a Gesualdós kottában.
}

SopranoTwo = \relative c {
  \voiceTwo
  s4*482
  % 173 egész nép
  a''2~2.~2.
}

Alto = \relative c {
  % (Elközelge húsvet) és felméne Jézus Jeruzálembe a templomba
  r4*5 a'4 d4 d8. c16 d4 a4 a'4. a8 a4 g4 fis4 r g2 b2 as2 g2. r4 r r8

  % 8. És ott találá ökrök, juhok, galambok árusait,
  d8 e16 f16 g16 f16 e8 d8 b'4 a4 g16 a16 b16 a16 g8 f8 e4. d8 d r r4 r1*5/4 r2
  r4 r8

  % 11. Più mosso. És ott terpeszkedtek a pénzváltók.
  d g4 f4 e4 d4 c8 d8 e16 d16 c16 b16 a4 g4 r2 r4 r8

  % 15. és ott terpeszkedtek a pénzváltók.
  b8 es4 d4 c4 b4 a8 b8 c16 d16 e16 f16 g4 a8 \breathe
  f8 b4 a4 g4 f4 e8 f8 g16 f16 e16 d16 c4 d4 r8

  % 19. És ott terpeszkedtek a pénzváltók.
  g8 c4 b4 a4 g4 f8 g8 a16 g16 f16 e16 d4 c2 r2*7 r4

  % 27. És kötélböl ostort fonván kihajtá öket a templomból,
  g4 b8 a4 g8 es'4 es4 d4 c4
  a'8 g4 d8 c4 b8 c8 \tempo "3. oldal" d4 c4 g2~g r8

  % 36. szalad a sok ökör
  d'8 e8 f8 g8 f8 e4 % \breathe ?
  f4 g8 a8 b8 a4 g8 f8 g8 e4 \breathe

  % 41. Kavarog
  d8 e8 fis8 g8 a8 d,4. % \breathe ?
  d8 e8 fis8 g8 a4 % \breathe ?
  d,8 e8 fis8 g8 a4 d,4 r4 r
  g8 a8 b8 c8 d4 g,8 r8
  g8 a8 b8 c8 d8 g,8 r4
  g8 f8 e8 d8 c4 % \breathe ?
  c4 c8 d8 e8 f8 g8 as8  % \breathe ?
  b8 as8 g4 r8
  as8 b8 c8 des8 c4 b8 as8 b8 fis4 f8 es8 des4 b8 r

  | % 61. És kötélböl
  b4 des8 c4 b8 fis'4 fis4 f4 es4
  c'8 b4 f8 es4 des8 es8
  f8 es8 d8 c8 b4 c4 d4 \breathe
  as'8 fis8 f8 es8 d4
  as'8 fis8 f8 es8 d4 es4 f8 r

  | % 72. Kavarog a barom,
  b8 as8 g8 f8 es8 f8 g8 f8
  g8 as8 b8 as8 g8 f8 g8 f8
  g8 as8 b8 as8 b8 g8 c8 b8
  c8 des8 c8 b8 c8 des8 c8 b8
  c8 des8 c8 b8 c8 d8 es8 r8 r4 r2 r2*3/2 r2 r2*3/2 r4

  % Alto
  % 88. És a pénzváltók pénzét szerteszórá,
  es,8. f16 g16 f16 es16 d16 c4 b4
  es4 b'4 c8. g16 d16 c16 d16 es16
  f16 es16 d16 c16 g4 r4 r2*3/2 r4
  f'8. g16 a16 g16 f16 e16 d4 c4 f4 b4 \breathe

  % 97. asztalaikat
  a4 a8 a g8 a4. b4 g4 a2 \breath 
  a4 a8 a g8 a4. c4 g4 a2 \breath 
  a4 a8 a g8 a4. d4 g,4 d4 r r

  % 110. És a pénzváltók pénzét szerteszórá,
  f8. g16 a16 g16 f16 e16 d4 c4 g'4 f4 c'4
  d8. a16 e16 d16 e16 f16 g16 f16 e16 d16 a4 r

  % 115 és kötélböl
  a'4 b8 a4 g8 es'4 es4 d4 c4 a8 g4 d8 c4 b8 c8 d4 c4 g2 r8

  % 12 És a galambok árusinak mondá
  d'4 e8 f8 e4 d8 e4. d8 c8 d8 c4 a2 r4 r

  % 127 Vigyétek
  \tuplet 3/2 {f'16 f8. f8} r4 e r r
  \tuplet 3/2 {d8 d d} r4 r e e r r
  f r e r d r e8 d c b r4 a h cis8 h cis2 r2*3/2 r1 r

  % 140 Írva vagyon: az én házam imádságnak háza
  f2. f4 f4 f2 r4 f8 f4. f4 f4 f8 g4. a4 g4 f2 f4 r f4 g4 a4 g4 f4 r r2

  % mivé tettétek
  g8 a4. b8 b4 c8

  % Rablók
  r4 d8 d8~2 r4 d8 d8~d4 c r4 c8 c8~2 r4 c8 c8~c4 b

  % 151
  r4 as8 8~4 g8 8~4 f8 8~2
  r4 f8 f8~2
  r4 es8 es~2
  r4 c8 c~2
  r4 c8 c~2 r1

  % Hallván ezt a föpapok és irástudók
  c4 c4 c4 c4 des4. c8 c8 c4. f4 c4 8 c4.c2. r4

  % El akarák öt veszteni, el akarák öt veszteni
  \tuplet 3/2 {c8 c8 b8} a8 b8 c8. b16 a8 r8
  \tuplet 3/2 {d8 c8 b8} a8 b8 c8. b16 a8 r8
  \tuplet 3/2 {h'8 a8 g8} f8 g8 a8. g16
  | % 115
  \tuplet 3/2 {f8 r \breath

  % mert féltek vala töle
  c}
  cis2 a4 a8 g8 a2 a8 r r4
  d2 a4 a8 g8 a2 a8 r r4
  r a8 a8~2
  r4 a8 a8~2~8 r r4 r2 r
  e'8 e8 e8 e8 e2 d2~2.~2. r2
  a'2 as2. 4 <b g>1 <d a fis>
}

Tenor = \relative c, {
  % 1. Elközelge
  d'8. d16 d8. d16 a'4 a4 r a4 d4 d8. c16 d4 a4 d4. d8 d4 e4 d4 r e2 d2 c2 h2.  r4 r8

  % 8. Animato. És ott találá ökrök, juhok, galambok árusait,
  f8 g16 a16 b16 a16 g4 f4 d'4 c4 f8 c4 d8 b16 c16 d16 c16 b8 a8 g r r4 r2 r8

  % 11. Più mosso. És ott terpeszkedtek a pénzváltók.
  a8 d4 c4 b4 a4 g8 a8 b16 a16 g16 f16 e4 d8 \breathe
  g8 c4 b4 a4 g4 f8 g8 a16 g16 f16 e16 d4 c8 \breathe
  f8 b4 a4 g4 fis4 e8 fis8 g16 f16 es16 d16 c4 f4 r2 r4 r8
  a8 b4 c4 d4 e4 f8 e8 d16 c16 b16 a16 b8 g8 fis4 \breathe
  g4 a4 b4 c8 b8 a16 b16 c16 d16 e4 fis2 r2*7 r4

  % 21. Con moto. És kötélböl ostort fonván kihajtá öket a templomból,
  g,4 b8 a4 g8 es'4 es4 d4 c4
  a'8 g4 d8 c4 b8 c8 d4 c4 g2~g \breathe

  % 36. mind az ökröket, mind a juhokat, mind kihajtá
  g8 f8 e8 d8 des8 r r4 a'8 g8 f8 e8 d8 r8 d'8 d8 d4 des4 d4 r r

  % 43. Kavarog a barom
  d,8 e8 fis8 g8 a8 d,8 r4
  c'8 b8 a8 b8 a8 g8 fis8 e8 d4 r2 r4
  g8 a8 b8 c8 d8 g,8 r4
  d'8 c8 h8 c8 h8 a8 g8 f8 e4 f8 r

  % 54. És kötélböl ostort fonván kihajtá öket a templomból,
  f4 as8 g4 f8 des'4 des4 c4 b4
  g'8 f4 c8 b4 as8 b8 c4 b4 f2
  es'2 des2 as'4 fis4 f4 b,8 as8 fis8 as8 b8 c8 d8 c8 b8 as8 fis4 as4 b4 \breathe

  f'8 es8 d8 c8 b4 f'8 es8
  d8 c8 b4 c4 des8 r8

  | % 72. Kavarog a barom
  des8 c8 b8 as8 g8 as8 b8 as8
  b8 c8 des8 c8 des8 es8 f8 es8
  f8 es8 des8 es8 des4 c8 des8
  c8 b8 c8 des8 c8 b8 c8 des8
  c8 b8 c8 des8 c8 b8 as8 r8 r4 r

  % 83. És a pénzváltók sok pénzét szerteszórá,
  as8. b16 c16 b16 as16 g16 f4 es4 as4 es'4
  f8. c16 g16 f16 g16 as16 b16 as16 g16 f16 c4 r r2*3/2 r2 r2*3/2 r2 4
  b'8. c16 d16 c16 b16 a16 g4 f4 b4 f'4
  g8. d16 a16 g16 a16 b16 c16 b16 a16 g16 a4 r

  % Tenor
  % asztalaikat feldönté
  e'4 e8 e8 d8 e4. f4 d4 e2 \breathe
  e4 e8 e8 d8 e4. g4 d4 e2 \breathe
  a4 d,4 e2~4 \breathe

  | % 109. és kötélböl ostort fonván kihajtá öket a templomból,
  e,4 f8 e4 8 b'4 b4 a4 g4 e'8 d4 a8 g4 8 g8 a4 g4 d4 \breathe
  a'4 b8 a4 g8 es'4 es4 d4 c4 a'8 g4 d8 c4 b8 c8 d4 c4 g2 r r r2*3/2 r r4 r

  % 127. Vigyétek
  \tuplet 3/2 {e'16 e8. e8} r4 d r r
  \tuplet 3/2 {c8 c c} r4 r h h r r
  c r h r a r h8 a g f r4 e8 f g f e d e2 r2*3/2 r1 r

  % 140 Írva vagyon: az én házam imádságnak háza Minden népek közt.
  d'2.  d4 d4 d2 r4 d8 d4. d4 d4 d8 e4. f4 e4 d2 d4 r d4 e4 f4 e4 d4 r r2

  % 146 mivé tettétek
  e8 f4. g8 g4 a8

  % Rablók
  r4 <a f>8 <a f>8~2 r4 <as e>8 <as e>8~2
  r4 <g es>8 <g es>8~2 r4 <fis d>8 <fis d>8~2

  % 151
  r4 <f des>8 8~<f des>4
  <es c>8 8~<es c>4
  <b des>8 <des b>8~2
  r4 <c as>8 <c as>8~2 r4 <b fis>8 <b fis>8~2 r4 <a f>8 <a f>8~2 r4 <a f>8 <a f>8~2

  % Più mosso. (Andante com moto.)
  r1 r r r
  <a f>4 <a f>2. r2 r4
  <f es>8 <f es>8~2 r4
  <es a>8 <es a>8~2. r4

  r <a es>8 <a es>8~4 r4 r <g es>8 <g es>8~2
  r4 <fis d>8 <fis d>8~4 r4 r <f des>8 <f des>8~2
  r4 <f c>8 <f c>8~2
  r4 <f des>8 <f des>8~2~8 r8 r4 r2 r1

  % Mivelhogy az egész nép úgy hallgatá Öt
  f8 f8 f8 f8 f2~2.~2. r2
  b2 <f' des>2. <f des>4 <g es>1 <fis d>
}

TenorTwo = \relative c {
  d'8. d16 d8. d16
  | % 2
  a'4 a4*256/384 r4*512/384 a4
  | % 3
  d4 d8. c16 d4 a4
  | % 4
  d4. d8 d4 e4
  | % 5
  d4*256/384 r4*512/384 e r4*256/384
  | % 6
  d2 c2
  | % 7
  b4*1540/384 r4*1724/384 f8 g16 a16 b16 a16 g4 f4
  | % 10
  d'4 c4 f8 c4 d8
  | % 11
  b16 c16 d16 c16 b8 a8 g4*128/384 r4*1600/384 a8 d4
  | % 13
  c4 b4 a4 8 a8
  | % 14
  b16 a16 g16 f16 e4 d8 g8 c4
  | % 15
  b4 a4 g4 8 g8
  | % 16
  a16 g16 f16 e16 d4 c8 f8 b4
  | % 17
  a4 g4 fis4 8 fis8
  | % 18
  g16 f16 es16 d16 c4 f4*256/384 r4*1472/384 a8 b4
  | % 20
  c4 d4 e4 8 e8
  | % 21
  d16 c16 b16 a16 b8 g8 fis4 g4
  | % 22
  a4 b4 c8 b8 a16 b16 c16 d16
  | % 23
  e4 fis4*512/384 r4*6016/384 g,4 b8 a4 8 es'4 es4 d4
  | % 29
  c4 a' r4*64/384 g4 8 c4
  | % 30
  b8 c8 d4 c4 g4*1280/384 r4*256/384 g8 f8
  | % 32
  e8 d8 des8 r r4 a'8 g8
  | % 33
  f8 e8 d8 r8 d'8 d8 d4
  | % 34
  des4 d4*256/384 r4*896/384
  | % 35
  d,8 e8 fis8 g8 a8 d,8
  | % 36
  c'8 b8 a8 b8 a8 g8 fis8 e8
  | % 37
  d4 r r2
  | % 38
  g8 a8 b8 c8 d8 g,8
  | % 39
  d'8 c8 b8 c8 b8 a8 g8 f8
  | % 40
  e4 f r4*256/384 f4 as8 g4 f8 des'4 des4 c4
  | % 42
  b4 g' r4*64/384 f4 8 b4
  | % 43
  as8 b8 c4 b4 f2 es'2 des2 as'4 fis4 f4
  | % 46
  b,8 as8 fis8 as8 b8 c8 d8 c8
  | % 47
  b8 as8 fis4 as4 b4
  | % 48
  f'8 es8 d8 c8 b4 f'8 es8
  | % 49
  d8 c8 b4 c4 des r4*256/384
  | % 50
  des8 c8 b8 as8 g8 as8 b8 as8
  | % 51
  b8 c8 des8 c8 des8 es8 f8 es8
  | % 52
  f8 es8 des8 es8 des4 c8 des8
  | % 53
  c8 b8 c8 des8 c8 b8 c8 des8
  | % 54
  c8 b8 c8 des8 c8 b8 as8 r r4 r as8. b16 c16 b16 as16 g16
  | % 56
  f4 es4 as4 es'4
  | % 57
  f8. c16 g16 f16 g16 as16 b16 as16 g16 f16 c4*256/384 r4*4736/384 b'8 r16 c16 d16 c16 b16 a16 g4 f4
  | % 62
  b4 f'4 g8. d16 a16 g16 a16 b16
  | % 63
  c16 b16 a16 g16 a4*256/384 r4*512/384 e'4
  | % 64
  e8 e8 d8 e4. f4
  | % 65
  d4 e2 e4
  | % 66
  e8 e8 d8 e4. g4
  | % 67
  d4 e2 a4
  | % 68
  d,4 e4*1024/384 r4*128/384
  | % 69
  e,4 f8 e4 8 b'4
  | % 70
  b4 a4 g4 e' r4*64/384 d4 a8 g4 8 g8 a4
  | % 72
  g4 d4 a'4 8 a4 g8 es'4 es4 d4
  | % 74
  c4 a' r4*64/384 g4 8 c4
  | % 75
  b8 c8 d4 c4 g4*1028/384 r4*5116/384 e'2. e128*11 r128*5 e4*88/384 r4*424/384 d4*380/384 r4*772/384
  | % 81
  c4*88/384 r4*40/384 c4*88/384 r4*40/384 c4*88/384 r4*808/384 b4
  | % 82
  b4*640/384 r4*896/384
  | % 83
  c4*256/384 r4*512/384 b4*256/384 r4*512/384
  | % 84
  a4*256/384 r4*512/384 b8 a8 g8 f8 e8 f8 g8 f8 e8 d8
  | % 86
  e4*512/384 r4*4480/384 d'2.
  | % 90
  d4 d4 d2 r4 d8 d4. d4
  | % 92
  d4 d8 e4. f4
  | % 93
  e4 d2 d4 r d4 e4 f4
  | % 95
  e4 d4 r r2 e8 f4 r8 g8 g4 a r4*448/384 f8 f8~2 r4 e8 e8~2 r4 es8 es8~2 r4 d8 d8~2 r4 des8 des4.
  | % 102
  c8 c4. b8 b8~2 r4 as8 as8~2 r4 fis8 fis8~2 r4 f8 f8~2 r4 f8 f8~2 r4 f4 f2
  | % 112
  r1
  | % 113
  es8 es8~2 r4
  | % 114
  es8 es8~2. r4 r es8 es4.*5 es8 es8~2 r4 d8 d4.*5 des8 des8~2 r4 c8 c8~2 r4 des8 des4*1088/384 r4*2944/384 f8 f8 f8 f8 f4*3068/384 r4*772/384 b2 des2. des4 es1 d4*3068/384
}

Bass = \relative c {
  % (Elközelge húsvet és felméne Jézus)
  % 4. Jeruzálembe a templomba
  r2 r1 r <b f'>4. <b f'>8 <b f'>4 <c g'>4 <d a'>4 r
  <c g'>2 <b f'>2 <as es'>2 <g d'>2. r4 r2 r4 r8

  % 8. Animato
  d'8 e16 f16 g16 f16 e8 d8 b'4 a4 g4. f8 e r r4 r r8

  % 11. Più mosso. És ott terpeszkedtek a pénzváltók.
  g8 c4 b4 a4 g4 f8 g8 a16 g16 f16 e16 d4 c4 r r r2 r4 r r8

  % 15. és ott terpeszkedtek a pénzváltók.
  c8
  \tempo "2. oldal"
  f4 e4 d4 c4 b8 c8 d16 c16 b16 a16 g8 a8 b4 f4 r8
  f'8 b4 a4 g4 f4 e8 f8 g16 f16 e16 d16 c4 b4 a4 r
  a'16 g16 f16 es16 d4 e4 fis4 g4 a8 g8 fis16 g16 a16 b16 c4 d2 r4

  % 22. És kötélböl ostort fonván kihajtá öket a templomból,
  d,4 es8 d4 c8 as'4 as4 g4 f4 d'8 c4 g8 f4 es8 f8 g4 f4 c2~c~c8
  h c8 d8 es8 d8 es8 f8 g8 fis8 g8 a8 b8 a8 b8 c8 d4 c4 g2 g,~g8
  fis8 g8 a8 b8 a8 b8 c8 d8 des8 d8 e8 f8 e8 d4 b'2~b8 a8 g4 \breathe

  % 42. Kavarog a barom, szalad a sok juh,
  d8 e8 fis8 g8 a8 d,4.
  d8 e8 fis8 g8 a4
  d,8 e8 fis8 g8 a4 g8 r8 r4
  g8 a8 h8 c8 d4 g,8 r8
  g8 a8 h8 c8 d8 g,4.~g8 r8

  % 53. És kihajtá a
  c,4 f2\tenuto b,2\tenuto es2\tenuto d2\tenuto des2\tenuto c2\tenuto b4 \breathe

  % 59. És kötélböl ostort fonván kihajtá öket a templomból,
  b4 des8 c4 b8 fis'4 fis4 f4 es4
  c'8 b4 f8 es4 des8 es8 f4 es4 b8 c8 d8 \breathe 
  es8 f4 es4 b8 c8 d8 es8 f4

  % 70. Szalad a sok
  b,8 c8 d8 es8 f8 ges8 
  as8 ges8 f4 es4 \breathe

  | % 75. Kavarog
  es8 f8 g8 as8 b4 es,4 es8 f8 g8 as8 b8 c8 des8 c8 des8 c8 b8 c8 b4
  as2~as4. g8 as4. g8 as8 g8 as8 g8 f8 r r4 r2 r2*3/2 r2 r2*3/2 r2 r4

  % Bass
  % 88. És a pénzváltók pénzét szerteszórá,
  es8. f16 g16 f16 es16 d16 c4 b4 es4 b'4
  c8. g16 d16 c16 d16 es16 f16 es16 d16 c16 g2 r4 r2 r2*3/2 r2 r

  % 98. asztalaikat feldönté.
  a'4 a8 a8 g8 a4. b4 g4 a2 \breathe
  a4 a8 a8 g8 a4. c4 g4 a2 \breathe
  d4 g,4 a2~a4 \breathe

  | % 110. És kötélböl ostort fonván kihajtá őket a templomból
  e4 f8 e4 8 b'4 b4 a4 g4 e'8 d4 a8 g4 f8 g8 a4 g4 d4 \breathe
  a4 b8 a4 g8 es'4 es4 d4 c4 a'8 g4 d8 c4 b8 c8 d4 c4 g2 r r r2*3/2 r2*3/2 r4

  % 127 Vigyétek
  a'8 a4 a8 g2 \tuplet 3/2 {g8 e d} e e~e2~e2 r4 r

  % Ne tegyétek atyám házát kereskedés házává!
  f8 f8 e8 d8 e8 a,4 r8 b4 c4 e16 d8. d16 c8.~16 b16 a16 g16 a2 a4 a2. r2*3/2 r1

  % 139 Írva
  d4. d8 c8 a4. r1 d8 d4. a'4 a4 c8 c4. b4 g4 a2 a4 r d4 c4 a4 g4 d4 r r2 g8 a8
  b8 r8 c8 a4. a4 g4 e4 r

  % 147 Rablók
  e'8 e4.~4 d8 c8 a2 a2 \breathe
  d8 d4.~4 c8 b8 g2 g2~1~1 \breathe
  g8 g4.~4 f8 es8 c2 c~1~1 r

  % Hallván ezt a föpapok és irástudók
  c4 c4 c4 c4 des4. c8 c8 c4. f4 c4 8 c4.c2. r4
  \tuplet 3/2 {c8 c b} a b c8. b16 a8 r
  \tuplet 3/2 {d8 c b} a b c8. b16 a8 r
  \tuplet 3/2 {b'8 a g} a g a8. g16 \tuplet 3/2 {f8 r \breathe

  % mert féltek vala töle Mivelhogy az egész nép úgy hallgatá Öt
  c}
  cis2 a4 a8 g8 a2 a8 r r4
  d2 a4 a8 g8 a2 a8 r r4
  c2 a4 a8 g8 a1 a8 r r4 r2 r1 r2 r4
  f' b,2.~b r2 b' f2. f4 es1 d
}

\score {
  <<
    \new StaffGroup <<
      % Soprano staff
      \new Staff = "S" <<
        \set Staff.midiInstrument = #"violin"
        \clef treble
        \Key
        \TimeAndTempo
        \new Voice = "Soprano"    { \voiceOne \Soprano }
  \new Voice = "SopranoTwo" { \voiceTwo \SopranoTwo }
      >>
      % Alto staff
      \new Staff = "A" <<
        \set Staff.midiInstrument = #"violin"
        \clef treble
        \Key
        \TimeAndTempo
        \new Voice = "Alto" { \Alto }
      >>
      % Tenor staff
      \new Staff = "T" <<
      % \set Staff.midiInstrument = #"viola"
        \clef "treble_8"
        \Key
        \TimeAndTempo
        \new Voice = "Tenor"    { \voiceOne \Tenor }
        % \new Voice = "TenorTwo" { \voiceTwo \TenorTwo }
      >>
      % Bass staff
      \new Staff = "B" <<
        \set Staff.midiInstrument = #"cello"
        \clef bass
        \Key
        \TimeAndTempo
        \new Voice = "Bass" { \Bass }
      >>
    >>
  >>
  \layout { }
  \midi { }
}
