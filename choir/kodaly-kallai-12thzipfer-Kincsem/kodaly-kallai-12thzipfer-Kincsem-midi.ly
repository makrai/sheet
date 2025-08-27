% Lily was here -- automatically converted by /usr/bin/midi2ly from kodaly-kallai-12thzipfer-Kincsem.mid
\version "2.14.0"

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

trackAchannelA = {


  \key f \major

  \time 4/4

  \tempo 2 = 88

}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = {

  \set Staff.instrumentName = "S"


  \key f \major

}

trackB = <<
  \context Voice = voiceA \trackBchannelA
>>


trackCchannelA = {

  \set Staff.instrumentName = "A"


  \key f \major

}

trackC = <<
  \context Voice = voiceA \trackCchannelA
>>


trackDchannelA = {

  \set Staff.instrumentName = "T"


  \key f \major

}

trackDchannelB = \relative c {
  d''4 a4 d16 d8. c4
  | % 2
  b16\staccato r b8\tenuto c16\staccato r c8\tenuto
 b8\staccato a8\staccato b8\staccato r
  | % 3
  c4 bes4 c16 a8. gis4
  | % 4
  a16\staccato r a8\tenuto bes16\staccato r bes8\tenuto
 a8\staccato g8\staccato a8\staccato r
  | % 5
  f4 fis4 g16 g8. g4
  | % 6
  fis16\staccato r fis8\tenuto fis16\staccato r fis8\tenuto
 fis8\staccato fis8\staccato fis8\staccato r
  | % 7 Mondjon jószeren-
  g4 g4 g8 g fis4
  | % 8
  g16\staccato r g8\staccato a16\staccato r a8\staccato
 b8\staccato c8\staccato d8\staccato c8\tenuto

  | % 9
  f,4 fis4 g16 g8. g4
  | % 10
  fis16\staccato r fis8\tenuto fis16\staccato r fis8\tenuto
 fis8\staccato fis8\staccato fis8\staccato r
  | % 11
  g4 g4 g8 g fis4
  | % 12
  g16\staccato r g8\staccato a16\staccato r a8\staccato 
 b8\staccato c8\staccato b8\staccato r
  | % 13
  c1 c
  | % 15 Beteg vagyok én
  d4 d4 a16 a8. d4
  | % 16
  e16\staccato r f8\tenuto e16\staccato r f8\tenuto
 e8\staccato f8\staccato e8\staccato r
  | % 17 Meg is halok én
  d4 a4 f'16 e8
 d16 c8 b8\tenuto
  | % 18
  c8\staccato f8\tenuto e8\staccato f8\tenuto
 e8\staccato f8\staccato e8\staccato r
  | % 19 Érted, kedves ró-
  d4 ees4 d8 d d4
  | % 20
  cis8\staccato d8\tenuto cis8\staccato d8\tenuto
 cis8\staccato d8\staccato cis8\staccato r
  | % 21 Elhervad az or-
  d4 ees8. c16 bes8\tenuto
 g8\tenuto fis4
  | % 22
  g16\staccato r a8\tenuto bes16\staccato r c8\tenuto
 d8\staccato c8\staccato bes8 a8\tenuto

  | % 23
  bes4 g8 fis8\tenuto g8\tenuto
 g8\tenuto d'4
  | % 24
  cis8\staccato d8\tenuto cis8\staccato d8\tenuto
 cis8\staccato d8\staccato cis8\staccato r
  | % 25
  d4 ees8. c16 bes8\tenuto
 g8\tenuto fis4
  | % 26
  g16\staccato r a8\tenuto b16\staccato r c8\tenuto
 d8\staccato c8\staccato b8 r
}

trackD = <<
  \context Voice = voiceA \trackDchannelA
  \context Voice = voiceB \trackDchannelB
>>


trackEchannelA = {

  \set Staff.instrumentName = "B"


  \key f \major

}

trackE = <<
  \context Voice = voiceA \trackEchannelA
>>

\score {
  <<
    \context Staff=trackD \trackA
    \context Staff=trackD \trackD
  >>
  \layout {}
  \midi {}
}
\midi{ }
