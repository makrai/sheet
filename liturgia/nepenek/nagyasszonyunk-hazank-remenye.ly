\header { 
  title = "Nagyasszonyunk, hazánk reménye"
}

\version "2.20.0" 
\include "deutsch.ly"
global = { \key es \major }

soprano = \relative b {
  b4 g'8. fis16 g4. as8 g f es c b2 f'4 e8. f16 b4. as8 f g es2 r4
  b4 g'8. fis16 g4. as8 g f es c b2 f'4 e8. f16 b4 as f8. g16 es2 r4
  c4 c8. c16 es4 c g'8 fis g es c2 r8 g'8 g8. g16 c4 b as g8 b as f4.
  b,4 g'8. fis16 g4 as g8 es c4 b2
  f'4 e8. f16 b2 b4 b8. b16 b2 as4 f8. g16 es2 \bar "|."  
  }


alto = \relative d' {
  b4 es8. c16 es4. d8 es d b c b2 b4 b8. b16 b4. b8 as b g2 r4
  b4 es8. c16 es4. d8 es d b c b2 b4 b8. b16 b4 b as8. b16 g2 r4
  g4 g8. g16 c4 g es'8 es es c g2 r8 es' es8. es16 e4 c c c8 c c as4.
  b4 b8. b16 b4 c c as4 g2
  b4 b8. b16 b2 b4 d8. es16 des2 c4 as8. b16 g2
}
  

tenor = \relative b, {
  b4 b'8. a16 b4. b8 b as g as g2 d4 cis8. d16 es4. d8 d d es2 r4
  b4 b'8. a16 b4. b8 b as g as g2 d4 cis8. d16 es4 d d8. d16 es2 r4
  es4 es8. es16 g4 es g8 as g4 es2 r8 g g8. g16 g4 g f e f8 f4.
  b,4 es8. d16 es4 es as es es2
  d4 cis8. d16 d2 es4 as8. g16 g2 f4 d8. d16 es2
  }

bass = \relative d {
  b4 es8. es16 es4. f8 es es es es es2 b4 b8. b16 g4. f8 b b es2 r4
  b4 es8. es16 es4. f8 es es es es es2 b4 b8. b16 g4 f b8. b16 es2 r4
  c4 c8. c16 c4 c c8 c c4 c2 r8 c8 c8. c16 c4 e f c f,8 f4.
  b4 es8. d16 es4 as, as c es2
  b4 b8. b16 as2 g4 f8. es16 e2 f4 b8. b16 es2
  }
  
FirstVerse = \lyricmode { \set stanza = #"1."
Nagy -- asz -- szo -- nyunk, ha -- zánk re -- mé _ -- nye!
Bús nem -- ze -- ted zo -- kog -- va esd!
Nyújtsd ir -- ga -- lom -- jo -- bod fe -- lé _ -- je,
Bot -- lá -- si -- ért, ó, meg ne vesd!
Mi lesz be -- lő -- lünk, ha Te el -- ha -- gysz?
Ó, ár -- va -- sá -- gunk sír -- ba her _ -- vaszt!
Min -- den re -- mé -- nyünk csak _ Te vagy:
Szent Szűz -- a -- nyánk, szent Szűz -- a -- nyánk,
Ó, el ne hagyj!
}

SecondVerse = \lyricmode { \set stanza = #"2." 
Hoz -- zád sír a job -- bak ke -- ser _ -- ve
Jám -- bor csa -- lá -- dok tűz -- he -- lyén!
A szebb i -- dők u -- tán e -- seng _ -- ve,
Mi -- kor nap ült ha -- zánk e -- gén.
Ó, ké -- rjed Is -- tent új -- ra ér _ -- tünk;
Ne hagyd el -- vesz -- ni ár _ -- va né -- pünk!
Min -- den re -- mé -- nyünk csak _ Te vagy...
}

ThirdVerse = \lyricmode { \set stanza = #"3."

Ol -- tá -- ri -- dat kö -- rül -- zo -- kog _ -- juk
Na -- pon -- ta mert, ó, vét -- ke -- zénk!
És sír -- va szent Ne -- ved ki -- ált _ -- juk:
Szűz Má -- ri -- a, te -- kints fe -- lénk!
Mu -- tasd meg még egy -- szer e nép _ -- nek,
Hogy párt -- fo -- gá -- sod mit se _ -- gít -- het!
Min -- den re -- mé -- nyünk csak _ Te vagy...  
}

#(set-default-paper-size "a4landscape")

\score {
   \transpose es f {
    << 
      \new PianoStaff <<
      \new Staff = "RH" \with {
        \consists "Staff_symbol_engraver"
      } <<
    \clef treble 
      \new Voice = "soprano" { \global \voiceOne \soprano }
    \new Voice = "alto"    { \global \voiceTwo \alto }  
    \new Lyrics { \lyricsto "soprano" { \FirstVerse }}
    \new Lyrics { \lyricsto "soprano" { \SecondVerse }}
    >>
      \new Staff = "LH" \with {
        \consists "Staff_symbol_engraver"
      } <<
    \clef bass 
      \new Voice = "tenor" { \global \voiceOne \tenor }
    \new Voice = "bass"  { \global \voiceTwo \bass } 
    \new Lyrics { \lyricsto "soprano" { \ThirdVerse }}
    >>
      >> 
      >>
   }
\layout {}
\midi {}
}

