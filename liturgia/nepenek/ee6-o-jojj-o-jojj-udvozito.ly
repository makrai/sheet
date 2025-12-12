\header { 
  title = "ÉE 6.  Ó, jöjj, ó, jöjj, Üdvözítő..."
  composer = "Dallam: Népi gyűjtés. Szöveg: Tárkányi-Zsasskovszky. 
    Forrás: ÉE 6"
}

\version "2.20.0" 
\include "deutsch.ly"
global = { \key d \minor   \compoundMeter #'((5 6 8))}

soprano = \relative a' {
  a8 a g a4 f8 g e d4.
    a'8 d d c4 f,8 a g f4.
    a8 d d d4 a8 d d c4.
    a8 a g a4 f8 g e d4.
}

alto = \relative d' {
  d4.~d4 c4. a4.
    f'4. e4 f8 c4~c4.
    f4.~f4 <f a>4. <e g>4.
    e4. d4 b4. a4.
}

tenor = \relative f {
  f4 e8 f4 f4 g8 f4.
    b4.~b4~b4. a4.
    a4.~a4 h4. b4.
    f4.~f4~f g8 f4.
}

bass = \relative d {
  d4.~d4 a4 c8 d4.
    <g, d'>4. c4 d8 e4 f4.
    d4.~d4 <g, d'>4. c4.
    f,4. b4 g4 c8 d4.
}

FirstVerse = \lyricmode { \set stanza = #"1."
  Ó, jöjj, Ó, jöjj,
    Üd -- vö -- zí -- tő,
    Be -- tel -- jes -- ült már az i -- dő.
      Törd át az ég zárt aj -- ta -- ját,
    Vár a vi -- lág só -- várg -- va rád.
}

SecondVerse = \lyricmode { \set stanza = #"2."
  Meg -- nyílt az ég har -- ma -- toz -- va,
  Meg -- vál -- tón -- kat hogy le -- hoz -- za;
  ég fel -- hő -- i, nyíl -- ja -- tok szét,
  hoz -- va Já -- kob fe -- je -- del -- mét!
}

ThirdVerse = \lyricmode { \set stanza = #"3."
  Föld, vi -- rulj ki, völ -- gyön -- hal -- mon
  vi -- ru -- ló zöld hadd fa -- kad -- jon;
  nyílj ki, föld -- nek szép Vi -- rá -- ga:
  Dá -- vid há -- zá -- nak Ki -- rá -- lya!
}

FourthVerse = \lyricmode { \set stanza = #"4."
  Ó, fé -- nyes Nap, ó, szép Csil -- lag,
  té -- ged vá -- gyunk mi lát -- ni csak:
  kelj fel, Na -- punk, fé -- nyes -- sé -- ged
  űz -- ze el a sö -- tét -- sé -- get!
}

#(set-default-paper-size "a4landscape")

\score {
  \transpose f es {
  % \transpose f d {
    << 
      \new PianoStaff <<
      \new Staff = "RH" \with {
        \consists "Staff_symbol_engraver"
      } <<
    \clef treble 
      \new Voice = "soprano" { \global \voiceOne \soprano }
    \new Voice = "alto"    { \global \voiceTwo \alto }  
    \new Lyrics \with { alignAboveContext = "RH" } { \lyricsto "soprano" { \FirstVerse }}
    \new Lyrics { \lyricsto "soprano" { \SecondVerse }}
    \new Lyrics { \lyricsto "soprano" { \ThirdVerse }}
    >>
      \new Staff = "LH" \with {
        \consists "Staff_symbol_engraver"
      } <<
    \clef bass 
      \new Voice = "tenor" { \global \voiceOne \tenor }
    \new Voice = "bass"  { \global \voiceTwo \bass }
    \new Lyrics { \lyricsto "soprano" { \FourthVerse }}
    >>
      >> 
      >>
  }
}
