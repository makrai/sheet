\version "2.22.1"
\include "deutsch.ly"

global = { \key c \major }

sopMusic = \relative a {
  c4 a' g2 e8 g f e d4 c
  c4 a' g2 e8 g f e d4 c
  e8 g g g d f e4 e8 g g g d f e4
  c4 a' g2 c4 h c2 e,4 d c2
}

altoMusic = \relative a {
  c2. h4 c8 h a g h4 c
  a4. h8 d4 c h c h c
  h2 a4 gis a h d h
  c d e8 d c h c4 d e fis e h c2
}

tenorMusic = \relative a {
  e4 f8 e d2 c4 d f e 
  f2 g g f4 e
  g f4. d8 e4 c e a g
  g f e f g a b a c g8f e2
}

bassMusic = \relative a {
  c,4 f, g2 a4 h g c
  f d e2 d4 c gis a
  e' d c h a e f g
  a h c d e f g d g g, c2
}

sopWords = \lyricmode { \set stanza = #"1."
  Dicsőség mennyben az Istennek! 
 Dicsőség mennyben az Istennek! 
 Az angyali seregek vígan így énekelnek: 
 Dicsőség, dicsőség Istennek!
 }

altoWords = \lyricmode { \set stanza = #"2."
   Békesség, földön az embernek!
Békesség földön az embernek!
Kit az igaz szeretet a kis Jézushoz vezet:
Békesség, békesség embernek!
}

tenorWords = \lyricmode { \set stanza = #"3. "
   Dicsérjük a szent angyalokkal,
imádjuk a hív pásztorokkal
az isteni gyermeket, ki minket így szeretett,
dicsérjük, imádjuk és áldjuk!
}

% (4) Kis Jézus, ne vess meg bennünket,
% hallgasd meg buzgó kérésünket,
% jászolodnál fogadjuk, hogy a vétket elhagyjuk,
% ó, Jézus, ne vess meg, hallgass meg!

bassWords = \lyricmode { \set stanza = #"5."
   Dicsőség az örök Atyának,
és értünk született Fiának,
s mindkettő Szent Lelkének, a malaszt kútfejének:
dicsőség, dicsőség Istennek!
}

\score {
  <<
    \new ChoirStaff <<
      \new Lyrics = "sopranos" \lyricsto sopMusic \sopWords
      \new Staff = "women" <<
        \new Voice = "sopranos" { \voiceOne \sopMusic }
        \new Voice = "altos" { \voiceTwo \altoMusic }
      >>
    >>
    \new Staff = "men" <<
      \clef bass
      \new Voice = "tenors" { \voiceOne \tenorMusic }
      \new Voice = "basses" { \voiceTwo \bassMusic }
    >>
    \new Lyrics = "altos" \lyricsto altoMusic \altoWords
    \new Lyrics = "tenors" \lyricsto tenorMusic \tenorWords
    \new Lyrics = "basses" \lyricsto bassMusic \bassWords
  >>
}
