\header {
  title = "Hogyha hozzád járulunk"
    % Népénekek a szenvedés idejére
    % Dallam: Lányi Ernő. 
    % Szöveg: Geréb Kázmér után. 
    % Forrás: ÉE 81 (156. oldal)
}

\include "deutsch.ly"
\version "2.10.33"
global = { \key c \minor }

Melody = \relative c' {
  c4 g' g g as f g2 b4 g f es d2 c
    c4 g' g g as f g2 b4 g f es d2 c
    c'4 b g2 c4 b8(f) g2 f4 es as g f2 g
    c4 b g2 c4 b8(f) g2 b4 g f es d2 c
}

SecondVerse = \lyricmode { \set stanza = #"2." 
  Krisz -- tus -- nak szent ke -- reszt -- je győ -- ze -- del -- mi zász -- lónk,
    a -- mel -- lyel meg -- sze -- rez -- te üd -- vün -- ket Meg -- vál -- tónk.
      Itt ra -- gyog e -- lőt -- tünk hi -- tünk szent jel -- vé -- nye,
    űz -- zön el lel -- künk -- ből min -- den ár -- nyat fé -- nye.
    }

ThirdVerse = \lyricmode { \set stanza = #"3." 
  Ezt a sok kínt é -- ret -- tünk szó -- tlan el -- szen -- ved -- ted,
      hogy ne -- künk, kik vé -- tet -- tünk, meg -- nyis -- sad a menny -- et.
        Bűn -- bá -- nó szí -- vün -- ket Is -- ten e -- lé tár -- juk,
      ezt a bort, ke -- nye -- ret né -- ki fel -- a -- jánl -- juk.  
}

#(set-default-paper-size "a5")

\score {
  <<
    \new Voice = "one" {
      \global
        \Melody
    }
  \new Lyrics \lyricsto "one" { \SecondVerse}
  \new Lyrics \lyricsto "one" { \ThirdVerse}
  >>
}
