\version "2.14.0"
\language "deutsch"

TimeAndTempo = {
  \tempo "Allegretto"
 }

Key = {
  \key g \minor 
  \time 3/4
 }

SopranoLyrics = \lyricmode {Sop -- ra -- no ly -- rics}
AltoLyrics = \lyricmode {Al -- to ly -- rics}
TenorLyrics = \lyricmode {Te -- nor ly -- rics}
BassLyrics = \lyricmode {Bass ly -- rics}
% PianoRHMusic = \relative {c' e g c}
% PianoDynamics = {s2\mp s4 s4}
% PianoLHMusic = \relative {c e g c}

SopranoMusic = \relative g' {
    b4 a8 b8 g4
  \repeat volta 2 {
    \repeat unfold 15 {b4 a8 b8 g4}
    \repeat unfold 4 {d'4 c8 d b4}
    g'4 8 8 f(es) d4 8 8 c(b) c4 8 8 d(c) g4 8 8 4
      \repeat unfold 2 {d8 (e fis g s b) c(d) c4 b}
    \repeat unfold 4 {b4 a8 b8 g4}
    % 33
      \alternative {
        \volta 1 {b4 a8 b8 g4}
        \volta 2 {g2.~g~g d'4 c8 d g, r }
      }
  }
}

AltoMusic = \relative g' {
  r2.
  \repeat volta 2 {
    \repeat unfold 3 {r2.}
    \repeat unfold 2 {g2. f es d}
    % 13
      \repeat unfold 4 {g4 8 8 4}
    % 17
      \repeat unfold 4 {b4 a8 b g4}
    % 21
      \repeat unfold 4 {g4 8 8 4}
    % 25
      \repeat unfold 2 {d2. e4 fis g}
    % 29
      d2.(c f es
      \alternative {
        \volta 1{d2) r4}
      \volta 2{d2.~d~d b'4 a8 b g r }
      }
  }
}

TenorMusic = \relative es' {
  r2.
  \repeat volta 2 {
    \repeat unfold 7 {r2.}
    es2. d c g
      % 13
      c4 8 8 4 d4 8 8 4 es4 8 8 4 d4 8 8 4
      d2. e f4(es) d g8(f) es4 d
      % 21
      d4 es8 es d(c) d4 8 8 4 es4 8 8 f(es) d4 8 8 4
      % 25
      \repeat unfold 4 {b4 a8 b8 g4}
    g2.~g~g~g~
      \alternative {
        \volta 1{g2 r4}
        \volta 2{\repeat unfold 3{b4 a8 b8 g4} r2.}
      }
  }
}

BassMusic = \relative es {
  r2.
  \repeat volta 2 {
    \repeat unfold 11 {r2.}
    es4 8 8 4
      g4 8 8 4
      c4 8 8 4
      g4 8 8 4
      \repeat unfold 4 {g4 8 8 4}
    \repeat unfold 4 {b4 a8 b8 g4}
    d2. d d~d2 es4 g2.~g~g~g~
      \alternative {
        \volta 1{g2 r4}
        \volta 2{g2.~g~g r}
      }
  }
}

\include "satb.ly"
