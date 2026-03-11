\header {
  title = "Nagyasszonyunk, hazánk reménye"
}

\version "2.20.0"
\include "deutsch.ly"
global = { \key es \major }

soprano = \relative b { \time 3/4 \partial 8
  b8 g'8. fis16 g4. as8 g f-5 es (c) b4 \fermata
  \time 4/4 f'4-3 e8. f16 b4. as8-5 \time 3/4 f g es4.
  b8 g'8. fis16 g4. as8 g f es (c) b4 \fermata
  \time 4/4 f'4 e8. f16 b4  as \time 3/4 f8. g16 es4.
  c8 c8. c16 es8 (d) c4 \time 4/4 g'8 fis g (es) c2 r8 g'8 g8. g16 c4 b as g8
  b (as) f4.
  b,4 g'8. fis16 g4 as \tuplet 3/2 {g4 (es) c4} b2
  f'4 e8. f16 b2 b4 b8. b16 b2 as4 f8. g16 es2 \bar "|."
  }


alto = \relative d' {
  b8 es8. c16 es4. d8 es d-3 b c b4 \fermata
  b4-1 b8. b16 b4. b8-2 as b g4.
  b8 es8. c16 es4. d8 es d b c b4 \fermata
  b4 b8. b16 b4 b as8. b16 g4.
  g8 g8. g16 c4 g es'8 es es c g2 r8 es' es8. es16 e4 c c c8 c c as4.
  b4 b8. b16 b4 c c as4 g2
  b4 b8. b16 b2 b4 d8. es16 des2 c4 as8. b16 g2
}


tenor = \relative b, {
  b8 b'8. a16 b4. b8 b as g as g4 \fermata d4-1 cis8. d16 es4. d8-2 d d es4.
  b8 b'8. a16 b4. b8 b as g as g4 \fermata d4 cis8. d16 es4 d d8. d16 es4.
  es8 es8. es16 g4 es g8 as g4 es2 r8 g g8. g16 g4 g f e f8 f4.
  b,4 es8. d16 es4 es as es es2
  d4 cis8. d16 d2 es4 as8. g16 g2 f4 d8. d16 es2
  }

bass = \relative d {
  b8 es8.-35 es16 es4. f8 es es es es es4 \fermata b4-3 b8. b16 g4. f8-5 b b es4.
  b8 es8. es16 es4. f8 es es es es es4 \fermata b4 b8. b16 g4 f b8. b16 es4.
  c8 c8. c16 c4 c c8 c c4 c2 r8 c8 c8. c16 c4 e f c f,8 f4.
  b4 es8. d16 es4 as, as c es2
  b4 b8. b16 as2 g4 f8. es16 e2 f4 b8. b16 es2
  }

FirstVerse = \lyricmode { \set stanza = #"1."
Nagy -- asz -- szo -- nyunk, ha -- zánk re -- mé -- nye!
Bús nem -- ze -- ted zo -- kog -- va esd!
Nyújtsd ir -- ga -- lom -- jo -- bod fe -- lé -- je,
Bot -- lá -- si -- ért, ó, meg ne vesd!
Mi lesz be -- lő -- lünk, hogy -- ha el -- hagysz?
Bús ár -- va -- sá -- gunk sír -- ba her -- vaszt!
Min -- den re -- mé -- nyünk csak Te vagy:
Ó, Szűz -- a -- nyánk, szent Szűz -- a -- nyánk,
Ó, el ne hagyj!
}

SecondVerse = \lyricmode { \set stanza = #"2."
Hoz -- zád sír a job -- bak ke -- ser -- ve
Jám -- bor csa -- lá -- dok tűz -- he -- lyén!
A szebb i -- dők u -- tán e -- seng -- ve,
Mi -- kor nap ült ha -- zánk e -- gén.
Ó, ké -- rjed Is -- tent új -- ra ér -- tünk;
Ne hagyd el -- vesz -- ni ár -- va né -- pünk!
Min -- den re -- mé -- nyünk csak Te vagy...
}

ThirdVerse = \lyricmode { \set stanza = #"3."

Ol -- tá -- ri -- dat kö -- rül -- zo -- kog -- juk
Na -- pon -- ta, ó, mert vét -- ke -- zénk!
És sír -- va szent Ne -- ved ki -- ált -- juk:
Szűz Má -- ri -- a, te -- kints fe -- lénk!
Mu -- tasd meg egy -- szer még e nép -- nek,
Hogy párt -- fo -- gá -- sod mit se -- gít -- het!
Min -- den re -- mé -- nyünk csak Te vagy...
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

