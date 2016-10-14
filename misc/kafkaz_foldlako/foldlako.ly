\include "deutsch.ly"
\version "2.10.33"
<<
  \chords { 
    c1 a:m e2:m f c1 
    c1 a:m e2:m f c1 
    f e:m f g:
    c1 a:m e2:m f c1 
    c1 a:m e2:m f c1 
    f e:m f g:
    c2 g a1:m d2:m d2:7 g1
    c2 g a1:m d2:m d2:7 g1 
    c1 a:m e2:m f c1 
    c1 a:m e2:m f c1 
    f e:m f g:  }
  \relative c' { 
    c8 c16 c g8 g g'8. e16 d8. e16 c4 r4 r4 r8. c16 % Megszül
    d16 c8. d16 e8. d8 c a8. c16 c4 r4 r2
    c8 g8 c g g'16 e8. d8. e16 c4 r4 r4 r8. c16 % Szeretettel
    d16 c8. d8 e8 d8 c a8. c16 c4 r4 r4. c8
    c8 c a a g'8 e8 d8. e16 d4 r4 r2 % Embernek
    c16 c8. d16 c8. d8 c d8. e16 d4 r4 r4. c16 h
    c8 c g8 g g'8. e16 d8. e16 c4 r4 r4 r8. c16 % Ez a / tested
    d16 c8. d16 e8. d8 c a8. c16 c4 r4 r2
    c8 c g8 g g'8. e16 d8. e16 c4 r4 r2 % Egyél
    d8. d16 d8 e d c a8. c16 c4 r4 r2
    c16 c8. a16 a8. g'8 e8 d8. e16 d4 r4 r4 r8. c16 % Hahó
    d16 c8. d8 c8 d8 c d8. e16 d4. f4 e d8 

    c4 r8 g g a g4 g'4. e4. r8 % A Nap
    c8 c4. a8 a h c e d4. h4 % madárka
    h4 h8 c4. g8 g a g4 g'4. e4 r4 % és a szél
    c8 c4. a8 a h c e d4. h4 e4 d8  % de jó ... Nézd

    c8 c16 c g8 g g'8. e16 d8. e16 c4 r4 r2 % Megszül
    d8 c8 d16 e8. d8 c a8 c c <<c g8>> r4 r2
    c8 c g8 g g'8. e16 d8. e16 c4 r4 r4 r8. c16 % Ne aggódjál
    d16 c8. d8 e8 d8. c16 a8. c16 c4 r4 r4. c8
    c8 a8 c a g'16 e8. d8. e16 d4 r4 r2 % Az emberek
    d8 c d c d c d c e d4. r4 r8 c
  }
  \addlyrics {
    Meg -- szü -- le -- tett, me -- gér -- ke -- zett, de jó!
    A le -- ges -- le -- gú -- jabb kis föld -- la -- kó
    sze -- re -- tet -- tel kö -- szön -- tünk, ha -- hó!
    Légy üd -- vö -- zöl -- ve ked -- ves kis la -- kó!
    Em -- ber -- nek szü -- let -- tél meg, hát ne -- vess,
    so -- kat u -- taz -- tál, hogy itt le -- hess,
    ez a tes -- ted lesz most majd az űr -- ha -- jó,
    hát ta -- pasz -- tald meg, mi min -- den -- re jó,
    e -- gyél, i -- gyál, játs -- szál jó so -- kat,
    élj vi -- dá -- man, sze -- ress má -- so -- kat,
    ha -- hó, ha -- hó ked -- ves föld -- la -- kó,
    még nem is sej -- ted, mi min -- den -- re jó._ _ _

    A Nap o -- da -- süt a ház -- ra,
    ma -- dár -- ka száll az an -- ten -- ná -- ra
    és a szél le -- ve -- let visz kör -- be,
    de jó, hogy meg -- jöt -- tél a föld -- re!  

    Nézd: a...

    Meg -- szü -- let -- tél, me -- gér -- kez -- tél, de jó,
    itt a föl -- dön sok min -- den mar -- ha jó.
    Ne ag -- gód -- jál, van bő -- ven me -- ló,
    ne -- ked is lesz dol -- god, te kis la -- kó.
    Az em -- be -- rek több -- nyi -- re ked -- ve -- sek,
    min -- den -- ki majd -- nem min -- den -- kit sze -- ret.

    A...
  }
>>
instru = \relative c' { 
  \key c \major
  c c d e h h c c d d e fis g g g g
  c, c d e h h c c d d e fis g g g g
}
