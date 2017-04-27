#(set-default-paper-size "a4")
\include "deutsch.ly"
\version "2.10.33"
global = { \key d \minor \time 12/8}
sopMusic = \relative d' { 
    d8 f g a~g f g~f e d4.
      d8 f g a~g f g~f e d4.
      d8 d e d~c d f~e d a4.
      e'8 f e d4.
      e8 f e d
} 
altoMusic = \relative d' {
    a4. c d d
      d a b a
  \repeat volta 2 {
      r r b a 
  }
  \alternative{
    { c d }
    { c a }
  }
}
tenorMusic = \relative d {  
  f e f a
  f c d f
  f~f d e e f
  g f
} 
bassMusic = \relative d {
  d a b d 
  b f g d'
  b~b g a a b
  c d
}
sopWords = \lyricmode {
  \set stanza = #"ÉE 109. 1."
 Ó if -- jak, lá -- nyok, gyer -- me -- kek, 
 az an -- gyal -- szó -- ból ért -- se -- tek: 
 fel -- tá -- madt Krisz -- tus ér -- te -- tek,  al -- le -- lu -- ja. 
 Al -- le -- lu -- ja,  al -- le -- lu -- ja,  al -- le -- lu -- ja.
  }
  altoWords = \lyricmode {
  \set satnza = #"2."
 Itt áll az Úr most köz -- te -- tek: 
 Bé -- kes -- ség, már  ne  fél -- je -- tek! 
 Én va -- gyok, ben -- nem  hig -- gye -- tek! Al -- le -- lu -- ja. 
 Al -- le -- lu -- ja,  al -- le -- lu -- ja,  al -- le -- lu -- ja.
 }
 tenorWords = \lyricmode {
  \set satnza = #"3."
 E -- zen a szent_- szent ün -- ne -- pen
 uj -- jong -- va csen -- gő é -- ne -- ken
 U -- run -- kat áld -- juk szün -- te -- len, al -- le -- lu -- ja. 
 Al -- le -- lu -- ja,  al -- le -- lu -- ja,  al -- le -- lu -- ja.
 }
 bassWords = \lyricmode {
  \set satnza = #"4."
 Il -- lő,  mert ily jót tett ve -- lünk, 
 á -- tad -- va  né -- ki  hű szí -- vünk, 
 Is -- ten -- nek  há -- lát zen -- ge -- nünk, al -- le -- lu -- ja. 
 Al -- le -- lu -- ja,  al -- le -- lu -- ja,  al -- le -- lu -- ja.
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
      \new Lyrics = "tenors" \with {
        % This is needed for lyrics above a staff
        %\override VerticalAxisGroup.staff-affinity = DOWN
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
