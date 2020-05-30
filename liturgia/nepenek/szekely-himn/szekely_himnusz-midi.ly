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
  "sö"8 "tét" "éj"8. "je"16 "len."8*5 
%  "Ve"8 "zesd" "még" 
%  "egy"4 "szer" 
%  | % 8
%  "győ"8 "ze" "lem" "re" "né"4 "ped,"4. "Csa"8 "ba" "ki" "rály"4 
%  "fi," 
%  | % 10
%  "csil"8 "lag" "ös" "vé" "nyen!"8*5 _ _ 
  "Ma"8 "rok" "nyi" "szé"4 
  "kely" 
  | % 12
  "por"8 "lik," "mint" "a" "szik"4 "la,"4. "Né"8 "pek" "har" 
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
  
  \key b \major
  
}

trackCchannelB = {
  
  \key b \major
  
}

right = \relative c {
  \voiceOne
  <b'' d>4 d8. c16 <g b>4 c
  | % 2
  <f, d >4 <f d >8. <es c >16 d2 
  | % 3
  r8 <f d b> <d b f> <f d b> <g es b g>4 <g es b g> 
  | % 4
    <f d b>8 <f d b> <d b f> <f d b> <b g d b>4 <b g es b>4 
  | % 5
  r8 <f d b >8 <d f b >8 <c g' a c >8 <d fis a d>4 <d f h d>4 
  | % 6
  <c' es >8 c8 b8. a16 b2 % f, es <d b >8 <c es >8 <b d >4 
%  | % 7
%  r8 f d f g4 g 
%  | % 8
%  f8 f d f <d b' >4 <b' es, >4 
%  | % 9
%  r8 <f b, >8 <b d, >8 <a c g >8 <d fis, a >4 <b d f, >4 
%  | % 10
%  <es c >8 <c g >8 <f, b >8 <a es >8 <b, d >8 <c es >8 <b d >4 
  | % 11
  r8 d, <d cis >8 <d c >8 <d g b, >4 <d b g' >4 
  | % 12
  <es g b>8 <es g b> <es g a> <e g> d4 d
  | % 13
  r8 d <d cis >8 <d c >8 <d g b, >4 <b es g>
  | % 14
  <f' d >8 <g es >8 <f d >8 <es c >8 <d b >2 
  | % 15
  r8 <f d b> <d b f> <f d b> <g es b g>4. <g es b g>8
  | % 16
    <f d b>8 <f d b> <d b f> <f d b> <b g d b>4 <b g es b>4 
  | % 17
  r8 <f d b >8 <d f b >8 <c g' a c >8 <d fis a d>4 <d f h d>4 
  | % 18
  <c' es >8 c8 b8. a16 b2 % f, es <d b >8 <c es >8 <b d >4 
%  | % 19
%  r8 d <d cis >8 <d c >8 <g b, d >4 <d g b, >4 
%  | % 20
%  b'8 b <es, g a >8 <g e >8 a, g b a 
%  | % 21
%  r8 d <d cis >8 <d c >8 <d g b, >4 <d b g' >4 
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
%  | % 27
%  <b' d f, >4 d8. c16 <b d, g >4 <c, es c' >4 
%  | % 28
%  <f d >4 <f d >8. <es c >16 d2 
  
}

rightvoiceB = \relative c {
  \voiceThree
  <d' f>4 <c d fis> <b d> <b c es>
  | % 4
  b4 a b2
  s1 s s2 s4*2 
  % 6
  <es g>8 <c g'> <d f> <c es> <b d> <c es> <b d>4
%  | % 7
%  s8 b8*7 
%  | % 8
%  b2 s b' 
  | % 11
  s1 
  | % 12
  b8 b a a <fis a> <e g> <g b> <fis a>
  | % 13
  s1 
  % 14
  a2 s 
  % 15
  s8 s8*7 
  | % 16
  s1 s 
  % 18
  <es' g>8 <c g'> <d f> <c es> <b d> <c es> <b d>4
%  | % 19
%  s1 
%  | % 20
%  es,4 s4 d d 
%  | % 21
%  s8*17 b8*7 
%  | % 24
%  b2 s4*7 b'8. a16 b2 
%  | % 27
%  s4 <d, fis >4 
}

left = \relative c {
  <b f' b>4 <a d fis>4 <d g g, >4 <ges ges,> 
  | % 2
  <f f,> <f, f,> <b b,>2
  | % 3
  <b, f' b>4 <b f' b> <es b' es> <es b' es>
  | % 4
  <b f' b> <a a'> <g g'>8 <f f'> <es es'>4
  | % 5
  <f f'> <f' f'>8 <es es'> <d d'>4 <g, g'> 
  | % 6
  <c c'>8 <es es'> <f f'>4 b2
%  | % 7
%  <f' b, >2 <g es >2 
%  | % 8
%  b,4 a g8 f es4 
%  | % 9
%  f f'8 <c' es, >8 <a d, >4 <g g, >4 
%  | % 10
%  <es' c, >8 <es, c' >8 d' c f, ges f4 
  | % 11
  d,2 <g d' g>4 <g d' g> 
  | % 12
  c4 c8 cis d b e d
  | % 13
  r d e fis <g, d' g>4 <es b' es>
  | % 14
  f'2 f
  | % 15
  <b,, f' b>4 <b f' b> <es b' es> <es b' es> 
  | % 16
  <b f' b> <a a'> <g g'>8 <f f'> <es es'>4
  | % 17
  <f f'>4 <f' f'>8 <es es'> <d d'> <e e'>16 <fis fis'> <g g'>8 <g, g'>
  | % 18
  <c c'>8 <es es'> <f f'>4 f'8 ges f4
%  | % 19
%  d,2 <d' g, >2 
%  | % 20
%  <b' c, >4 c,8 cis fis e g fis 
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
%  | % 27
%  <f b b, d' >4 <c' a, d fis >4 <d, g g, b' >4 <fis b fis, >4 
%  | % 28
%  f, f b2 
  
}

leftvoiceB = \relative c {
  \voiceTwo
  s1 
  | % 2
  s1 
  | % 3
  s1 
  | % 4
  s2 s 
  | % 5
  s1 
  % 6
  s2 f8 ges f4
%  | % 7
%  s1 
%  | % 8
%  f2 g 
%  | % 9
%  b4. s8*7 f4 b,2 
  | % 11
  s8 d e fis s2 c,4 c8 cis d2
  | % 13
  d2 s
  | % 14
  f4 g8 a b a b f 
  | % 15
  s1 
  | % 16
  s2 s 
  | % 17
  s4. s8 s4 s8 s
  | % 18
  s2 b
%  | % 19
%  s8 d e ges s2. a4 d,2 
%  | % 21
%  s8 d e fis s2 
%  | % 22
%  f f 
%  | % 23
%  s1 
%  | % 24
%  f2 g 
%  | % 25
%  b4. s8 a4 s8 g, 
%  | % 26
%  s4 f' b,2 
%  | % 27
%  s1 
%  | % 28
%  <f' b >1 
  
}

trackC = << 
  \context Voice = voiceA \trackCchannelA
  \context Voice = voiceC \right
  \context Voice = voiceD \rightvoiceB
>>

trackD = <<

  \clef bass
  
  \context Voice = voiceA \trackCchannelB
  \context Voice = voiceF \left
  \context Voice = voiceG \leftvoiceB
>>

\score {
  \new PianoStaff 
%  \transpose b c' {
  <<
    \new Staff = upper { \new Voice = "voiceC" \trackC }
  \new Lyrics \lyricsto "voiceC" \trackBchannelA
    \new Staff = lower { \trackD }
  >>
%    }
    \layout { }
  \midi { }
}
