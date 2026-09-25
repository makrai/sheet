\version "2.23.0"
\language "deutsch"

TimeAndTempo = {
  \tempo "Allegretto"
 }

Key = {
  \key g \minor
  \time 3/4
 }

SopranoLyricsOne = \lyricmode {
  Ще -- дрик, ще -- дрик, ще -- дрі -- воч -- ка,
    При -- ле -- ті -- ла лас -- ті -- воч -- ка,
    Ста -- ла со -- бі ще -- бе -- та -- ти,
    Гос -- по -- да -- ря ви -- кли -- ка -- ти.
      Вий -- ди, вий -- ди, гос -- по -- да -- рю,
    По -- ди -- ви -- ся на ко -- ша -- ру.
      Там о -- веч -- ки по -- ко -- ти -- лись,
    А яг -- нич -- ки на -- ро -- ди -- лись.
      В_те -- бе то -- вар весь хо -- ро -- ший,
    Бу -- деш ма -- ти мір -- ку гро -- шей,
    % Хоч не гро -- ші, то по -- ло -- ва,
    В_те -- бе жін -- ка чор -- но -- бро -- ва.
      Хоч не гро -- ші, то по -- ло -- ва,
    В_те -- бе жін -- ка чор -- но -- бро -- ва.

  Ще -- дрик, ще -- дрик,
  M лас -- ті -- воч -- ка,
}

SopranoLyricsTwo = \lyricmode {
  Scse -- drik, scse -- drik, scse -- dri -- vocs -- ka,
       Pri -- le -- tyí -- la lasz -- tyi -- vocs -- ka,
       Szta -- la szo -- bi scse -- be -- ta -- ti,
       Hosz -- po -- da -- ra vik -- li -- ka -- ti.
         Vij -- di, vij -- di, hosz -- po -- da -- ru,
       Po -- di -- vi -- sza na ko -- sa -- ru.
         Tam o -- vecs -- ki po -- ko -- ti -- lisz,
       A jah -- nyics -- ki na -- ro -- di -- lisz.
         V_te -- be to -- var vesz ho -- ro -- sij, Bu -- des ma -- ti mir -- ku hro -- sej,
         V_te -- be to -- var vesz ho -- ro -- sij, Bu -- des ma -- ti mir -- ku hro -- sej,
         % Hocs ne hro -- si, to po -- lo -- va,
       V_te -- be zsin -- ka csor -- no -- bro -- va.
         Hocs ne hro -- si, to po -- lo -- va,
       V_te -- be zsin -- ka csor -- no -- bro -- va.

  Scse -- drik, scse -- drik,
  M lasz -- tyi -- vocs -- ka.
}

AltoLyrics = \lyricmode {
       Szta -- la szo -- bi scse -- be -- ta -- ti,
         Tam o -- vecs -- ki po -- ko -- ti -- lisz,
       A jah -- nyics -- ki na -- ro -- di -- lisz.
         V_te -- be to -- var vesz ho -- ro -- sij, Bu -- des ma -- ti mir -- ku hro -- sej,
         V_te -- be to -- var vesz ho -- ro -- sij, Bu -- des ma -- ti mir -- ku hro -- sej,
       V_te -- be zsin -- ka csor -- no -- bro -- va.
       M m lasz -- tyi -- vocs -- ka.
}

TenorLyricsOne = \lyricmode {
  % ще -- бе -- та -- ти,
    % Там о -- веч -- ки по -- ко -- ти -- лись,
    % А яг -- нич -- ки на -- ро -- ди -- лись.
 % В_те --
    _ _ _ _
    _ _ _ _ _ _ _ _
    _ _ _ _ _ _ _ _
    _
 бе то -- вар % весь
      хо -- ро -- ший,
      В_те -- бе то -- вар весь хо -- ро -- ший,
    Бу -- деш ма -- ти мір -- ку гро -- шей,
    Хоч не гро -- ші, то по -- ло -- ва,
    В_те -- бе жін -- ка чор -- но -- бро -- ва.
}

TenorLyricsTwo = \lyricmode {
  scse -- be -- ta -- ti,
       Tam o -- vecs -- ki po -- ko -- ti -- lisz,
       A jah -- nyics -- ki na -- ro -- di -- lisz.
         V_te -- be to -- var % vesz
         ho -- ro -- sij,
       V_te -- be to -- var vesz ho -- ro -- sij, Bu -- des ma -- ti mir -- ku hro -- sej,
       Hocs ne hro -- si, to po -- lo -- va,
       V_te -- be zsin -- ka csor -- no -- bro -- va.
         M
         Scse -- drik, scse -- drik, scse -- dri -- vocs -- ka,
       Pri -- le -- tyí -- la
}

BassLyrics = \lyricmode {
  Tam o -- vecs -- ki po -- ko -- ti -- lisz,
      A jah -- nyics -- ki na -- ro -- di -- lisz.
        V_te -- be to -- var vesz ho -- ro -- sij, Bu -- des ma -- ti mir -- ku hro -- sej,
      V_te -- be to -- var vesz ho -- ro -- sij, Bu -- des ma -- ti mir -- ku hro -- sej,
      % Hocs ne hro -- si, to po -- lo -- va,
      V_te -- be zsin -- ka M m
}
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
    }
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
