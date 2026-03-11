\header {
  title = "SzVU 83. Mint a szarvas ér vizéhez (Zsolt 42 (41))"
    % composer = "Kálmán Károly szövege"
}

\version "2.20.0"
\include "deutsch.ly"
global = { \key c \major }

soprano = \relative c' {
  e4. d8 c4 e g4. f8 f4 e c4. d8 e4 f d4. e8 c2
    e4. d8 c4 e g4. f8 f4 e d4 (e8) fis g4 h a (g8) fis g2
    g4. a8 g4 e f4. g8 f4 d e4. d8 c4 d e4. f8 d2
    g4. f8 e4 f g a h c a (g8) f e4 g d4. e8 c2 \bar "|."

}

alto = \relative c' {
  c4 h c2 c4 d h c c4. h8 c2 c4. h8 g2
    gis2 a4 b a c d b a d2. c2 h
    c4 h c cis d c d2 c4 h c d d cis d2
    g,4 a8 h c2 d2. c4 c1 c4 h c2
}

tenor = \relative c' {
  g4 f g2 a4 g2. a4 f g a a g c,2
    e2. a4 a2 g fis4 g8 a g2 e4 s s2
    e4 f g a a2 as4 g g f e a b a f2
    e4 f g a g fis f e f2 g4 h a g8 f e2
}

bass = \relative c {
  c4 d e c a h d c f d c a f g c2
    h4 e, a g f a h cis d c h g a d g,2
    c4 d e a d, a c h c g a f g a d2
    e4 d c a h d gis, a f a c e, f g c2
}

FirstVerse = \lyricmode { \set stanza = #"1."
  Mint a szar -- vas ér vi -- zé -- hez,
       Lel -- kem hoz -- zád, é -- gi Lény,
       Úgy só -- hajt, úgy szom -- jaz, é -- hez:
         Vajh e -- lér -- lek egy -- kor én?

         Bús hí -- ved -- nek bá -- nat ár -- ja
         Éj -- jel -- nap -- pal ét -- ke lett,
       Mert az ál -- nok azt ki -- ált -- ja,
       El nem é -- rlek Té -- ge -- det.
}

SecondVerse = \lyricmode { \set stanza = #"2."
  Rád gon -- dol -- va, ár -- va lel -- kem
    Bú -- bá -- nat -- ban ég, e -- ped,
    Nem dal -- lhat -- ván há -- la -- tel -- ten
      Temp -- lo -- mod -- ban é -- ne -- ked.

      Üd -- vö -- zít az Is -- ten en -- gem,
    Bár ma Her -- mon -- hegy tö -- vén
      Száz ör -- vény közt, för -- ge -- teg -- ben
      Ten -- ger kín -- nal küz -- dök én.
}

ThirdVerse = \lyricmode { \set stanza = #"3."
  Nap -- ja -- im mily jók va -- lá -- nak,
    Hogy meg -- ál -- da en -- ge -- met!
      Há -- lám ott az üdv U -- rá -- nak
      Éj -- jel -- nap -- pal zeng -- he -- tett.

      Kér -- ve kér -- lek, óvj meg en -- gem,
    Itt se hagyj el, ó, vi -- gyázz!
      Mért szo -- ron -- gat úgy az el -- len,
    S_mért kör -- nyé -- kez en -- nyi gyász?
}

FourthVerse = \lyricmode { \set stanza = #"4."
   Csont -- ja -- i -- mat por -- ba ont -- ják,
    Össze -- zúz -- nak en -- ge -- met!
      S gúny -- ka -- cag -- va egy -- re mond -- ják:
      Hol van a te Is -- te -- ned?

      Mért vagy oly bús, ár -- va lel -- kem,
    Mért szo -- ron -- gasz oly na -- gyon?
      Bíz -- zál é -- des Is -- te -- ned -- ben,
    Lesz még víg dal aj -- ka -- don!
}

#(set-default-paper-size "a4landscape")

\score {
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
  >>
    \new Staff = "LH" \with {
      \consists "Staff_symbol_engraver"
    } <<
  \clef bass
    \new Voice = "tenor" { \global \voiceOne \tenor }
  \new Voice = "bass"  { \global \voiceTwo \bass }
  \new Lyrics { \lyricsto "soprano" { \ThirdVerse }}
  \new Lyrics { \lyricsto "soprano" { \FourthVerse }}
  >>
    >>
    >>
    \layout {}
  \midi {}
}
