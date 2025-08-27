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
  
  \tempo 4 = 54 
  \skip 1*35 
  \time 3/2 
  \skip 1. 
  | % 37
  
  \time 6/2 
  \skip 1*3 
  | % 38
  
  \time 2/2 
  \skip 1*4 
  \time 3/2 
  \skip 1. 
  | % 43
  
  \time 2/2 
  
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
  d''4*256/384 r4*128/384 a4*256/384 r4*128/384 d4*64/384 r4*32/384 d8 
  r16 c4*256/384 r4*128/384 
  | % 2
  b4*28/384 r4*164/384 b4*128/384 r4*64/384 c4*28/384 r4*164/384 c4*128/384 
  r4*64/384 b128*5 r128*11 a128*5 r128*11 b128*5 r128*27 
  | % 3
  c4*256/384 r4*128/384 bes4*256/384 r4*128/384 c4*64/384 r4*32/384 a8 
  r16 aes4*256/384 r4*128/384 
  | % 4
  a4*28/384 r4*164/384 a4*128/384 r4*64/384 bes4*28/384 r4*164/384 bes4*128/384 
  r4*64/384 a128*5 r128*11 g128*5 r128*11 a128*5 r128*27 
  | % 5
  f4*256/384 r4*128/384 ges4*256/384 r4*128/384 g4*64/384 r4*32/384 g8 
  r16 g4*256/384 r4*128/384 
  | % 6
  ges4*28/384 r4*164/384 ges4*128/384 r4*64/384 ges4*28/384 r4*164/384 ges4*128/384 
  r4*64/384 ges128*5 r128*11 ges128*5 r128*11 ges128*5 r128*27 
  | % 7
  g4*256/384 r4*128/384 g4*256/384 r4*128/384 g r4*64/384 g4*128/384 
  r4*64/384 ges4*256/384 r4*128/384 
  | % 8
  g4*28/384 r4*164/384 g128*5 r128*11 a4*28/384 r4*164/384 a128*5 
  r128*11 b4*92/384 r4*100/384 c4*92/384 r4*100/384 d4*92/384 r4*100/384 c4*128/384 
  r4*64/384 
  | % 9
  f,4*256/384 r4*128/384 ges4*256/384 r4*128/384 g4*64/384 r4*32/384 g8 
  r16 g4*256/384 r4*128/384 
  | % 10
  ges4*28/384 r4*164/384 ges4*128/384 r4*64/384 ges4*28/384 r4*164/384 ges4*128/384 
  r4*64/384 ges128*5 r128*11 ges128*5 r128*11 ges128*5 r128*27 
  | % 11
  g4*256/384 r4*128/384 g4*256/384 r4*128/384 g r4*64/384 g4*128/384 
  r4*64/384 ges4*256/384 r4*128/384 
  | % 12
  g4*28/384 r4*164/384 g128*5 r128*11 a4*28/384 r4*164/384 a128*5 
  r128*11 b4*92/384 r4*100/384 c4*92/384 r4*100/384 b4*92/384 r4*292/384 
  | % 13
  c4*3020/384 r4*52/384 
  | % 15
  d4*256/384 r4*128/384 d4*256/384 r4*128/384 a4*64/384 r4*32/384 a8 
  r16 d4*256/384 r4*128/384 
  | % 16
  e4*28/384 r4*164/384 f4*128/384 r4*64/384 e4*28/384 r4*164/384 f4*128/384 
  r4*64/384 e128*5 r128*11 f128*5 r128*11 e128*5 r128*27 
  | % 17
  d4*256/384 r4*128/384 a4*256/384 r4*128/384 f'4*64/384 r4*32/384 e4*188/384 
  r4*4/384 d4*64/384 r4*32/384 c4*188/384 r4*4/384 b4*128/384 r4*64/384 
  | % 18
  c4*92/384 r4*100/384 f4*128/384 r4*64/384 e4*92/384 r4*100/384 f4*128/384 
  r4*64/384 e128*5 r128*11 f128*5 r128*11 e128*5 r128*27 
  | % 19
  d4*256/384 r4*128/384 ees4*256/384 r4*128/384 d r4*64/384 d4*128/384 
  r4*64/384 d4*256/384 r4*128/384 
  | % 20
  des4*92/384 r4*100/384 d4*128/384 r4*64/384 des4*92/384 r4*100/384 d4*128/384 
  r4*64/384 des128*5 r128*11 d128*5 r128*11 des128*5 r128*27 
  | % 21
  d4*256/384 r4*128/384 ees4*284/384 r4*4/384 c4*64/384 r4*32/384 bes4*128/384 
  r4*64/384 g4*128/384 r4*64/384 ges4*256/384 r4*128/384 
  | % 22
  g4*28/384 r4*164/384 a4*128/384 r4*64/384 bes4*28/384 r4*164/384 c4*128/384 
  r4*64/384 d128*5 r128*11 c128*5 r128*11 bes4*188/384 r4*4/384 a4*128/384 
  r4*64/384 
  | % 23
  bes4*256/384 r4*128/384 g4*188/384 r4*4/384 ges4*128/384 r4*64/384 g4*128/384 
  r4*64/384 g4*128/384 r4*64/384 d'4*256/384 r4*128/384 
  | % 24
  des4*92/384 r4*100/384 d4*128/384 r4*64/384 des4*92/384 r4*100/384 d4*128/384 
  r4*64/384 des128*5 r128*11 d128*5 r128*11 des128*5 r128*27 
  | % 25
  d4*256/384 r4*128/384 ees4*284/384 r4*4/384 c4*64/384 r4*32/384 bes4*128/384 
  r4*64/384 g4*128/384 r4*64/384 ges4*256/384 r4*128/384 
  | % 26
  g4*28/384 r4*164/384 a4*128/384 r4*64/384 b4*28/384 r4*164/384 c4*128/384 
  r4*64/384 d128*5 r128*11 c128*5 r128*11 b4*188/384 
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


trackF = <<
>>


trackG = <<
>>


trackH = <<
>>


trackI = <<
>>


trackJ = <<
>>


trackK = <<
>>


trackL = <<
>>


trackM = <<
>>


trackN = <<
>>


trackO = <<
>>


trackP = <<
>>


trackQ = <<
>>


trackR = <<
>>


trackS = <<
>>


\score {
  <<
    \context Staff=trackD \trackA
    \context Staff=trackD \trackD
  >>
  \layout {}
  \midi {}
}
