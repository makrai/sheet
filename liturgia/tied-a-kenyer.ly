\version "2.18.2"
\language "deutsch"

music = \relative b { 
  \key b \major
    b8 b b c d4 r
    b8 b4 c8 d4 r
    d8 d4 es8 f4 es8 d c2 b
}

verse = \lyricmode { 
 Ti -- éd a ke -- nyér,
 ti -- éd a bor,
 ti -- éd az é -- le -- tem, Jé -- zus
}

\score {
  <<
    \new Voice = "one" {
        \music
    }
  \new Lyrics \lyricsto "one" {
    \verse
  }
  >>
}
