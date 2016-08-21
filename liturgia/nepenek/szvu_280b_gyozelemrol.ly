  % Dallam: dr. Koudela Gézától (1894--1937)
% Szöveg: Bangha Bélától (1880--1940)

#(set-default-paper-size "a4" 'landscape)
\include "deutsch.ly"
\version "2.10.33"
global = { \key d \minor }
sopMusic = \relative f' {
  f4 e d c a'4. a8 g4 f g d e2 f1

  f4 e d c a'4. a8 g4 f c'4. c8 b4 a g4. c,8 c2
  a'4 a g f c'4. c8 h4 a d d c h a4. gis8 a2
  b4 b a g a a g f g a b g c4. b8 a2
  b4 b a g a a g f e g g c d4. h8 c2 

  c4 c d8 c4. b4 a g f g4. d'8 d4 b a4. g8 c2
  f,4 e d c c' c b a d c8 b a4 f a4. g8 f2
} 
altoMusic = \relative c' {
  r1 c4 d e d d2. c8 b a4 b a2
  c2 b4 g a b c d c d e f d b a g c h c d e f d c f2 e4 f e1
  g2 f4 e f2 e4 d d1 e4 d c2
  d4 e f c c d e d c e d g f2 e
  f4 g f e e f e d d2 g4 f f e f2
  d4 c h c es g f es d2 cis4 d f e c2
}
tenorMusic = \relative f {  
  r1 f2 e4 f b2. a8 g f4 e8 d c2

  a'2 f4 e f2 e4 d f fis g f g f e2
  f2 e4 a a2 gis4 a a2. d4 c h c2
  d4 c d g, c b c a g fis g2 g a 
  g f4 g f2 a a4 h2 c4 a g g2

  a4 g a2 b4 c b a b2. g4 c1
  g2 f4 g a2 b4 c f,2 e4 f b2 a
} 
bassMusic = \relative f {
  f4 e d c a4 b c d g,2 c f,1

  f'4 a, b c f, g a b a b c d b g c2
  f,4 g a h c d e f d h c d e e, a2
  g4 a b c f, g a d b a g b c e f2
  b,4 c d e f h, cis d a' g f e d g c,2

  f4 e d a' g f c d g f e d c b a2
  h4 c d e f es d c b g a d g, c f,2
}
sopWords = \lyricmode {
  \repeat unfold 12 {\skip 1}
  \set stanza = #"1."
   Győz -- e -- lem -- ről é -- ne -- kel -- jen Nap -- ke -- let és Nap -- nyu -- gat,
   Mil -- li -- ó szív ösz -- sze -- cseng -- jen, ma -- gasz -- tal -- ja az U -- rat!
   Krisz -- tus új -- ra föld -- re szál -- lott, ván -- dor -- lá -- sunk tár -- sa lett,
   Mert sze -- ret -- te a vi -- lá -- got, ke -- nyér -- szín -- be rej -- te -- zett.  
}

altoWords = \lyricmode { 
  \repeat unfold 12 {\skip 1}
  \set stanza = #"2."
   Egy -- kor ér -- tünk tes -- tet öl -- tött, kis -- gyer -- mek -- ként jött kö -- zénk,
   A ke -- reszt -- fán vé -- re öm -- lött vált -- sá -- gunk -- nak bé -- re -- ként.
     Most az ol -- tár Gol -- go -- tá -- ján új -- ra itt a drá -- ga vér,
       Ál -- do -- zat az Is -- ten -- Bá -- rány, Krisz -- tus tes -- te a ke -- nyér.  

   Krisz -- tus ke -- nyér s_bor szí -- né -- ben Úr s_Ki -- rály a föld fe -- lett,
   For -- rassz egy -- gyé bé -- kes -- ség -- ben min -- den _ né -- pet s_nem -- ze -- tet!
}

tenorWords = \lyricmode { 
  \repeat unfold 12 {\skip 1}
  \set stanza = #"3. "
     Zúg -- jon hát a há -- la -- é -- nek, száll -- jon völ -- gyön, ten -- ge -- ren,
     A sze -- re -- tet Is -- te -- né -- nek di -- cső -- ség és üdv le -- gyen.
   Az e -- gész föld le -- gyen ol -- tár, vi -- rág raj -- ta a szi -- vünk,
     Min -- den da -- lunk zen -- gő zsol -- tár, töm -- jén -- il -- lat a hi -- tünk.  
}

bassWords = \lyricmode { 
  \repeat unfold 12 {\skip 1}
  \set stanza = #"4."
   Ist -- ván ki -- rály ár -- va né -- pe, te is hajtsd meg hom -- lo -- kod,
   Bo -- rulj térd -- re, szórd e -- lé -- be min -- den gon -- dod, bá -- na -- tod!
     A ke -- reszt volt e -- zer é -- ven re -- mény -- sé -- ged osz -- lo -- pa,
   Most is Krisz -- tus je -- le légyen jobb jö -- vőd -- nek zá -- lo -- ga.
}
\score {
\transpose f d {
  <<
    \new ChoirStaff <<
      \new Lyrics = "sopranos" \with {
        % This is needed for lyrics above a staff
        %\override VerticalAxisGroup.staff-affinity = #DOWN
      }
      \new Staff = "women" <<
        \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> } 
        \new Voice = "altos" { \voiceTwo << \global \altoMusic >> } 
      >> 
      \new Lyrics = "altos" 
      \new Lyrics = "tenors" \with {
        % This is needed for lyrics above a staff
        %\override VerticalAxisGroup.staff-affinity = #DOWN
      }
      \new Staff = "men" << \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> } 
    >>
    \new Lyrics = "basses" 
    \context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
    \context Lyrics = "altos" \lyricsto "sopranos" \altoWords 
    \context Lyrics = "tenors" \lyricsto "sopranos" \tenorWords
    \context Lyrics = "basses" \lyricsto "sopranos" \bassWords
  >>
>>
} 
}
