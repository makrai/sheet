#(set-default-paper-size "a4" 'landscape)
\include "deutsch.ly"
\version "2.10.33"
global = { \key es \major \time 3/4 \partial 4}
sopMusic = \relative e' {
es4 es2 es4 g2 as4 b2 c4 b2 b4 es,2 es4 g2 as4 b2 c4 b2.
b2 c4 b2 as4 g2 f4 es2. f2 f4 g2 f4 es2 f4 g2.
b2 c4 b2 as4 g2 f4 es2. f2 f4 g2 f4 es2 f4 g2.
c,2 c4 d2 d4 es2. b'2. g2 g4 f2 f4 es2.~es4 
} 
altoMusic = \relative b {
r4 b2.~b f'~f r~r d~d 
d~d~d~d c d c~c
f2.~f es2 d4 c2. d~d r2. b 
as b c f es d b~b4
}
tenorMusic = \relative g {  
 r4 g2.~g b~b g~g d~d
 r2. r r r es f g g 
 r r r r r r g4 f2 r2.
 es f g r r as g~g4
} 
bassMusic = \relative b, {
r4 es2.~es d~d c~c g~g
g'4 f2 d4 b2 c4 as2 g2. as b c~c
d4 b2~b4 d2 es4 g2 as2. f4 b,2 g4 as2 c4 b2 es2.
as,2. b c d es b es~es4 
}
sopWords = \lyricmode {
  \set stanza = #"SZVU 16. 1."
   Az an -- gyal é -- ne -- kel, _ _ 
   Te -- kints az ég -- re fel: _ _
   Nap -- vi -- lá -- gos lett az éj,
   Meg -- ha -- sadt az ég, _ _
   És a Má -- so -- dik Sze -- mély
   Most a föld -- re lép. _ _
   Mé -- zet ont az ég! _
   Mé -- zet ont az ég!
   }
gloriaW = \lyricmode {
   \set stanza = #"Gloria"

   Az an -- gyal így da -- lol _ _
   A fé -- nyes ég a -- lól: _ _
   Is -- te -- nünk -- nek gló -- ri -- a
   A meny -- nyek -- be fenn! _ _
   Vé -- le mond -- ja Má -- ri -- a,
   Vé -- le Bet -- le -- hem. _ _
   Mond -- junk gló -- ri -- át! _
   Mond -- junk gló -- ri -- át!
   }
offerW = \lyricmode {
   \set stanza = #"Offer"

   És men -- nek bol -- do -- gan, _ _
   Hol Jé -- zus jász -- la van, _ _
   Hoz -- zák tisz -- ta szí -- vü -- ket
   Szép a -- ján -- do -- kúl. _ _
   Mink is hoz -- zunk, jó hí -- vek,
   Vár -- ja már az Úr: _ _
   Tisz -- ta, hű szí -- vet, _
   Tisz -- ta, hű szí -- vet.
   }
sanctW = \lyricmode {
   \set stanza = #"Sanctus"

   Most an -- gyal s_pász -- to -- rok, _ _
   Ég és föld egy -- be -- fog: _ _
   Mind mi él és mind mi van,
   Gló -- ri -- á -- ra hív, _ _
   Áld -- ja e -- gyütt bol -- do -- gan
   Min -- den tisz -- ta szív, _ _
   Szent, szent, szent az Úr! _
   Szent, szent, szent az Úr! 
   } 
credoWords = \lyricmode { 
\set stanza = #"Credo"
   Jó pász -- tor em -- be -- rek, _ _
   Mind jám -- bor, nyílt szí -- vek, _ _
   Hall -- ják bol -- dog hang -- ja -- it:
   Föl -- dön bé -- kes -- ség! _ _
   Bol -- dog -- sá -- got ád a hit,
   Hogy -- ha szí -- ved ép. _ _
   Hissz -- szük is sza -- vát, _
   Hissz -- szük is sza -- vát.  
   }

\score {
  \transpose f f {
    <<
      \new ChoirStaff <<
      \new Lyrics = "sopranos" \with {
        % This is needed for lyrics above a staff
          %\override VerticalAxisGroup.staff-affinity = #DOWN
      }
    \new Staff = "women" <<
      \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> } 
    \new Voice = "altos" { \voiceTwo << \global \altoMusic >> } 
    >> 
      \new Lyrics = "altos" 
      \new Lyrics = "tenors" \with {
        % This is needed for lyrics above a staff
          %\override VerticalAxisGroup.staff-affinity = #DOWN
      }
    \new Staff = "men" << \clef bass
      \new Voice = "tenors" { \voiceOne << \global \tenorMusic >> }
    \new Voice = "basses" { \voiceTwo << \global \bassMusic >> } 
    >>
      \new Lyrics = "basses" 
      \context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
      \context Lyrics = "altos" \lyricsto "sopranos" \offerW 
      \context Lyrics = "tenors" \lyricsto "sopranos" \sanctW
      \context Lyrics = "basses" \lyricsto "sopranos" \gloriaW
      >>
      >>
  }
}
