% Lily was here -- automatically converted by /usr/bin/midi2ly from szekely_himnusz.midi
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

trackAchannelA = {


  \key b \major
    
    \set Staff.instrumentName = "by"
  
  % [TEXT_EVENT] creator: 
  
  % [TEXT_EVENT] GNU LilyPond 2.19.82          
  
  \time 4/4 
  
  \tempo 4 = 60 
  
}

trackA = <<
  \context Voice = voiceA \trackAchannelA
>>


trackBchannelA = \lyricmode {
  
  % [SEQUENCE_TRACK_NAME] lyrics:
  " "4 " "8. " "16 " "4 " " 
  | % 2
  " " " "8. " "16 " "8*5 "Ki"8 "tud" "ja," "mer"4 "re," 
  | % 4
  "mer"8 "re" "visz" "a" "vég"4 "zet,"4. "Gö"8 "rön" "gyös" 
  "ú"4 "ton," 
  | % 6
  "sö"8 "tét" "éj"8. "je"16 "len." " " " "8 "Ve"8 "zesd" "még" 
  "egy"4 "szer" 
  | % 8
  "győ"8 "ze" "lem" "re" "né"4 "ped,"4. "Csa"8 "ba" "ki" "rály"4 
  "fi," 
  | % 10
  "csil"8 "lag" "ös" "vé" "nyen!" " " " " "Ma"8 "rok" "nyi" "szé"4 
  "kely" 
  | % 12
  "por"8 "lik," "mint" "a" "szik "4 _ "la,"4. _ "Né"8 "pek" "har" 
  "cá"4 "nak" 
  | % 14
  "zaj"8 "ló" "ten" "ge" "rén."8*5 "Fe"8 "jünk" "az" "ár,"4. 
  "jaj,"8 
  | % 16
  "száz" "szor" "el" "bo" "rít"4 "ja,"4. "Ne"8 "hagyd" "el" 
  "vesz"4 "ni" 
  | % 18
  "Er"8 "délyt," "Is"8. "te"16 "nem!"4 
}

trackB = <<
  \context Lyrics = voiceA \trackBchannelA
>>


trackCchannelA = {
  
  \set Staff.instrumentName = ":soprano"
  

  \key b \major
  
}

trackCchannelB = {
  
  \set Staff.instrumentName = ":tenor"
  

  \key b \major
  
}

trackCchannelC = \relative c {
  \key b \major
  \voiceOne
  <d'' f, d b' >4 <d c, d fis>8. c16 <b, d g b >4 <c' c, b es >4 
  | % 2
  <f, d b>4 <f d a>8. <es c >16 <d b>2 
  | % 3
  r8 f d f g4 g 
  | % 4
  f8 f d f <b d, >4 <b es, >4 
  | % 5
  r8 <f b, >8 <d b' >8 <a' g c >8 <a d fis, >4 <b d f, >4 
  | % 6
  <c es g, es>8 <c g c,>8 <d, f> <c es> <d b >8 <c es >8 <b d >4 
  | % 7
  r8 f' d f g4 g 
  | % 8
  f8 f d f <d b' >4 <b' es, >4 
  | % 9
  r8 <f b, >8 <b d, >8 <a c g >8 <d fis, a >4 <b d f, >4 
  | % 10
  <es c >8 <c g >8 <f, b >8 <a es >8 <b, d >8 <c es >8 
  <b d >4 
  | % 11
  r8 d <d cis >8 <d c >8 <d g b, >4 <d b g' >4 
  | % 12
  b'8 b <g a es >8 <g e >8 a, g b a 
  | % 13
  r8 d <d des >8 <d c >8 <d g b, >4 <d g b, >4 
  | % 14
  <f d >8 <g es >8 <f d >8 <es c >8 <d b >2 
  | % 15
  r8 f d f <es g >4. <es g >8 
  | % 16
  f f d f <d b' >4 <b' es, >4 
  | % 17
  r8 <f b, >8 <b d, >8 <g c a >8 <a d fis, >4 <b d f, >4 
  | % 18
  <es c >8 <c g >8 f, es <b d >8 <c es >8 <b d >4 
%  | % 19
%  r8 d <d des >8 <d c >8 <g b, d >4 <d g b, >4 
%  | % 20
%  b'8 b <es, g a >8 <g e >8 a, g b a 
%  | % 21
%  r8 d <d des >8 <d c >8 <d g b, >4 <d b g' >4 
%  | % 22
%  <f d >8 <g es >8 <f d >8 <es c >8 <d b >2 
%  | % 23
%  r8 f d f <es g >4. <es g >8 
%  | % 24
%  f f d f <b d, >4 <b es, >4 
%  | % 25
%  r8 <f b, >8 <b d, >8 <a c g >8 <a d fis, >4 <b f d' >4 
%  | % 26
%  <es c >8 <c g >8 f, es <b d >8 <c es >8 <b d >4 
  | % 27
  <b' d f, >4 d8. c16 <b d, g >4 <c, es c' >4 
  | % 28
  <f d >4 <f d >8. <es c >16 d2 
  | % 29
  
}

trackCchannelCvoiceB = \relative c {
  \voiceThree
  r4 <d' fis >4 r8*13 b8*7 
  | % 4
  b2 r4*7 b'8. a16 b2 
  | % 7
  r8 b,8*7 
  | % 8
  b2 r1*2 b'2 
  | % 11
  r1 
  | % 12
  es,4 r4 d d 
  | % 13
  r8*17 b8*7 
  | % 16
  b2 r4*7 b'8. a16 b2 
  | % 19
  r1 
  | % 20
  es,4 r4 d d 
  | % 21
  r8*17 b8*7 
  | % 24
  b2 r4*7 b'8. a16 b2 
  | % 27
  r4 <d, fis >4 
}

trackCchannelCvoiceC = \relative c {
  \voiceFour
  r2*5 es'2 
  | % 4
  r2*7 es2 
  | % 8
  
}

trackCchannelD = \relative c {
  \key b \major
  <f b, b' >4 <fis d a >4 <d g g, >4 <ges ges, >4 
  | % 2
  <f f,> <f, f,> <b b,>2 
  | % 3
  <f' b, >2 <g es >2 
  | % 4
  b,4 a g8 f es4 
  | % 5
  f f'8 <c' es, >8 <a d, >4 <g g, >4 
  | % 6
  <c, c,>8 <es es,>8 <f f,>4 f8 ges f4 
  | % 7
  <f b, >2 <g es >2 
  | % 8
  b,4 a g8 f es4 
  | % 9
  f f'8 <c' es, >8 <a d, >4 <g g, >4 
  | % 10
  <es' c, >8 <es, c' >8 d' c f, fis f4 
  | % 11
  d,2 <g d' >2 
  | % 12
  <b' c, >4 c,8 cis fis e g fis 
  | % 13
  d,2 <d' g, >2 
  | % 14
  f,4 g8 a b a b f 
  | % 15
  <f' b, >2 <g es >2 
  | % 16
  b,4 a g8 f es4 
  | % 17
  f f'8 <c' es, >8 d, e16 fis g4 
  | % 18
  <es' c, >8 <c es, >8 d c f, fis f4 
%  | % 19
%  d,2 <d' g, >2 
%  | % 20
%  <b' c, >4 c,8 des fis e g fis 
%  | % 21
%  d,2 <d' g, >2 
%  | % 22
%  f,4 g8 a b a b f 
%  | % 23
%  <f' b, >2 <g es >2 
%  | % 24
%  b,4 a g8 f es4 
%  | % 25
%  f f'8 <c' es, >8 d, e16 fis g4 
%  | % 26
%  <es' c, >8 <c es, >8 d c f, fis f4 
  | % 27
  <f b b, d' >4 <c' a, d fis >4 <d, g g, b' >4 <fis b fis, >4 
  | % 28
  f, f b2 
  | % 29
  
}

trackCchannelDvoiceB = \relative c {
  \voiceTwo
  r1 
  | % 2
  <f b >1 
  | % 3
  r1 
  | % 4
  f2 g 
  | % 5
  b4. r8*7 f4 b,2 
  | % 7
  r1 
  | % 8
  f'2 g 
  | % 9
  b4. r8*7 f4 b,2 
  | % 11
  r8 d e fis r2. a4 d,2 
  | % 13
  r8 d e fis r2 
  | % 14
  f f 
  | % 15
  r1 
  | % 16
  f2 g 
  | % 17
  b4. r8 a4 r8 g, 
  | % 18
  r4 f' b,2 
  | % 19
  r8 d e fis r2. a4 d,2 
  | % 21
  r8 d e fis r2 
  | % 22
  f f 
  | % 23
  r1 
  | % 24
  f2 g 
  | % 25
  b4. r8 a4 r8 g, 
  | % 26
  r4 f' b,2 
  | % 27
  r1 
  | % 28
  <f' b >1 
  | % 29
  
}

trackC = <<

  
  \context Voice = voiceA \trackCchannelA
  \context Voice = voiceB \trackCchannelB
  \context Voice = voiceC \trackCchannelC
  \context Voice = voiceD \trackCchannelCvoiceB
  \context Voice = voiceE \trackCchannelCvoiceC
  \context Voice = voiceF \trackCchannelD
  \context Voice = voiceG \trackCchannelDvoiceB
>>

\score {
  \new PianoStaff 
\transpose b c' 
{
  <<
    \new Staff = upper { \new Voice = "singer" \trackCchannelC 
\trackCchannelCvoiceB
    }

  \new Lyrics \lyricsto "singer" \trackBchannelA
    \new Staff = lower { 
  \clef bass
    \trackCchannelD }
  >>
  }
    \layout { }
  \midi { }
}
