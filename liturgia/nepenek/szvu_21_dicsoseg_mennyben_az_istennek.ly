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
  Di -- cső -- ség menny -- ben az Is -- ten -- nek!
  Di -- cső -- ség menny -- ben az Is -- ten -- nek!
  Az an -- gya -- li se -- re -- gek ví -- gan így é -- ne -- kel -- nek:
  Di -- cső -- ség, di -- cső -- ség Is -- ten -- nek!
}

altoWords = \lyricmode { \set stanza = #"2."
  Bé -- kes -- ség, föl -- dön az em -- ber -- nek!
  Bé -- kes -- ség föl -- dön az em -- ber -- nek!
  Kit az i -- gaz sze -- re -- tet a kis Jé -- zus -- hoz ve -- zet:
  Bé -- kes -- ség, bé -- kes -- ség em -- ber -- nek!
}

tenorWords = \lyricmode { \set stanza = #"3."
  Di -- csér -- jük a szent an -- gya -- lok -- kal,
  i -- mád -- juk a hív pász -- to -- rok -- kal
  az is -- te -- ni gyer -- me -- ket, ki min -- ket így sze -- re -- tett,
  di -- csér -- jük, i -- mád -- juk és áld -- juk!
}

bassWords = \lyricmode { \set stanza = #"5."
  Di -- cső -- ség az ör -- ök A -- tyá -- nak,
  és ér -- tünk szü -- le -- tett Fi -- á -- nak,
  s mind -- kett -- ő Szent Lel -- ké -- nek, a ma -- laszt kút -- fej -- é -- nek:
  di -- cső -- ség, di -- cső -- ség Is -- ten -- nek!
}

% (4) Kis Jézus, ne vess meg bennünket,
% hallgasd meg buzgó kérésünket,
% jászolodnál fogadjuk, hogy a vétket elhagyjuk,
% ó, Jézus, ne vess meg, hallgass meg!

\score {
  <<
    \new GrandStaff <<
      % Női szólamok (jobb kéz)
      \new Staff = "women" <<
        \new Voice = "sopVoice" { \voiceOne \sopMusic }
        \new Voice = "altoVoice" { \voiceTwo \altoMusic }
        \new Lyrics \lyricsto "sopVoice" \sopWords
        \new Lyrics \lyricsto "altoVoice" \altoWords
      >>
      % Férfi szólamok (bal kéz)
      \new Staff = "men" <<
        \clef bass
        \new Voice = "tenorVoice" { \voiceOne \tenorMusic }
        \new Voice = "bassVoice" { \voiceTwo \bassMusic }
        \new Lyrics \lyricsto "tenorVoice" \tenorWords
        \new Lyrics \lyricsto "bassVoice" \bassWords
      >>
    >>
  >>
}

