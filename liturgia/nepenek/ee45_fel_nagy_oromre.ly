#(set-default-paper-size "a4" 'landscape)
\include "deutsch.ly"
\version "2.10.33"
global = { \key a \major }
sopMusic = \relative e' {
  e4 cis8 e a4 h cis gis8 h a2
  a4 h8 fis h4 a gis fis8 fis e2
  e4 cis8 e a4 h cis gis8 h a2
  a4 h8 fis h4 a gis fis8 fis e2
  e4 e8 e fis4 fis gis gis8 fis e2
  e4 cis8 e cis'4 a h fis8 gis a2 
} 
altoMusic = \relative c' {
  cis2. dis4 e d cis2 cis2. dis4 e4 dis h2 
  cis2 e eis fis h, dis e4 dis e2
  cis2 d e4 d cis2 cis2. dis4 d2 cis
}
tenorMusic = \relative f {  
  a1~a4 h e,2 a2.h4~h a gis2
  a1 gis2 cis r1~r2 gis2
  a1 h2 a
  a1~a4 gis e2
} 
bassMusic = \relative a {
  a4 gis fis f e2 a,
  fis'2 h, e4 h e2
  a cis,~cis fis,4. e8
  dis2 cis8 dis e fis gis a h4 e2
  a, d4 h e e, a2
  a'4 gis fis f e2 a,
}
sopWords = \lyricmode {
  \set stanza = #"ÉE 45. 1."
  Fel nagy ö -- röm -- re! ma szü -- le -- tett,
  A -- ki --  u -- tán a föld e -- pe -- dett.
  Má -- ri -- a kar -- ján é -- gi --  a fény,
  Is -- te -- ni Kis -- ded Szűz -- nek ö -- lén.
  Egy -- sze -- rű pász -- tor, jöjj kö -- ze -- lebb,
  Nézd a te é -- des Is -- te -- ne -- det.

}

altoWords = \lyricmode { 
  \set stanza = #"2."
  Nem ra -- gyo -- gó fény közt nyu -- go -- szik,
  Bár -- so -- nyos ágy -- a nincs ne -- ki --  itt.
  Csak ez a szal -- ma, kol -- du -- si hely,
  Rá me -- le -- get a mar -- ha le -- hel.
  Egy -- sze -- rű pász -- tor, tér -- de -- den állj!
  Mert ez az é -- gi s_föl -- di ki -- rály. 
}

\score {
\transpose f f {
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
      \new Staff = "men" << \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
      \new Voice = "basses" { \voiceTwo << \global \bassMusic >> } 
    >>
    \context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
    \context Lyrics = "altos" \lyricsto "sopranos" \altoWords 
  >>
>>
} 
}
