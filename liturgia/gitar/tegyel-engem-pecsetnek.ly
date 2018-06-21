\include "deutsch.ly"
\transpose h a {
<<
  \chords {
\germanChords
  h2:m e:m a d
  e:m g a h:m
        a h:m r1
  h2:m g a fis
  g e:m fis
  }
\transpose d h {
\relative d {
\key d \minor
d8 d a' a b a g4
  g8 g c b a4 a
    \repeat volta 2 {b8 a g a f e d4}
  \alternative {
  {f8 g f e d4 d}
  {c'8 c d e d4 d2 }  % 2va4
  }

  r

  a8 a d4 d8 c d d e f e4 e8 d e4 % 
  f8 e d4 d8 d d d e f16 f e8 f e d e4


  % d8 c d4 d8 c d d e f e4 e8 d e4 % Miskolci Ámen
  % f8 e f4 f8 f g f e d e f e d e4 %

  % a8 c d4 d8 c d d e f e4 e8 d e4 % Egresi Anna
  % a,8 c d4 d8 d g f e d e f e d e %

  % a8 c d4 d8 c d d d f e4 e8 d cis4 % Varga Rita
  % a8 c d4 d16 d a c d4 d8 f e e e d cis4 %
}
}


\addlyrics {
    \set stanza = #"1. " Te -- gyél --  en -- gem  -- pe -- csét -- nek,
    te -- gyél a ka -- rod -- ra,  le -- gyek  -- pe -- csét
      ö -- rök -- ké  szí -- ved -- re for -- raszt -- va.}

     \addlyrics {

        \set stanza = #"2. " Er -- ő -- sebb a sze -- re -- lem a _ kín -- ha -- lál -- nál,
    és --  e buz -- gó sze -- re -- lem
      ke -- mé -- nyebb --  a sír -- nál.
      ke -- mé -- nyebb --  a sír -- nál.

      Mert e lán -- gok, e  lán -- gok,  mint a tûz láng -- ja -- i, 
      ér -- ted ég -- nek,  csak ér -- ted ég -- nek az Úr -- nak láng -- ja -- i.

      Ten -- ger el  -- nem bo -- rít -- ja,
    sok  -- víz el  -- nem olt -- ja,
    Iste -- nem -- nek  -- sze -- rel -- mét
      sok  -- kincs nem  -- pó -- tol -- ja.}
>>
}
instru = \relative c' {
  \key c \major
  c c d e h h c c d d e fis g g g g
  c, c d e h h c c d d e fis g g g g
}
