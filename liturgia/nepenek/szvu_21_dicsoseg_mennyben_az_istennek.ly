\version "2.22.1"
\include "deutsch.ly"
global = { \key c \major }
sopMusic = \relative a {
c4 a g2 e8 g f e d4 c
c4 a g2 e8 g f e d4 c
e8 g g g d f e4 e8 g g g d f e4
c4 a g2 c4 h c2 e,4 d c2
}
altoMusic = \relative a {
c2. h c8 h a g h4 c
a4. h8 d4 c h c h c
h2 a4 gis a h d h
c d e8 d c h c4 d e fis e h c2
}
tenorMusic = \relative a {
e f8 e d2 c4 d f e 
f2 g g f4 e
g f4. d8 e4 c e a' g
g f e f g a b a c g8f e2

bassMusic = \relative a {
c4 f, g2 a4 h g c
f d e2 d4 c gis a
e d c h a e f g
a h c d e f g d g g, c
}
sopWords = \lyricmode {
  \set stanza = #"1."
  Ó, Má -- ri -- a, Is -- ten Any -- ja,
  Én -- ne -- kem is jó A -- nyám!
  Szí -- vem -- nek szent láng -- buz -- gal -- ma
  Di -- csér ké -- sőn és ko -- rán.
  Bá -- na -- tom -- ban, ö -- rö -- möm -- ben,
  Jó, bal -- sors -- ban csak azt zen -- gem:
  Üd -- vöz -- légy, Szűz Má -- ri -- a,
  Üd -- vöz -- légy, Szűz Má -- ri -- a!
}
altoWords = \lyricmode {
  \set stanza = #"2."
  Ál -- dott vagy, ég vá -- lasz -- tott -- ja, az Úr va -- gyon te -- vé -- led.
  Szent és ál -- dott, a -- ki lak -- ta szep -- lő -- te -- len szűz mé -- hed.
  Ó hall -- gass meg, kér -- lek en -- gem, va -- la -- hány -- szor csak ezt zen -- gem:
  Üd -- vöz -- légy Szűz Má -- ri -- a, üd -- vöz -- légy Szűz Má -- ri -- a!
}
tenorWords = \lyricmode {
  \set stanza = #"3. "
  Haj -- nal kel -- tén ha meg -- kon -- dul
  Ma -- gas tor -- nyon a ha -- rang,
  Mint -- ha szó -- zat száll -- na ég -- ből,
  I -- má -- ra kelt fel e hang.
  Meg -- kö -- szönt -- lek, szép szűz haj -- nal,
  Ezt re -- be -- gem az an -- gyal -- lal:
  Üd -- vöz -- légy...
}
bassWords = \lyricmode {
  \set stanza = #"6."
  Hű gyer -- me -- ked les -- zek min -- dig,
  Í -- gé -- rem ezt, Szűz -- a -- nyám.
  Ó, el ne hagyj en -- gem so -- ha,
  Ol -- tal -- ma -- zó Pát -- ró -- nám!
  Ben -- ned bíz -- va, Té -- ged áld -- va,
  Csak e szó jön az aj -- kam -- ra:
  Üd -- vöz -- légy, Szűz Má -- ri -- a,
  Üd -- vöz -- légy, Szűz Má -- ri -- a!

  \set stanza = #"4."
  Ha dél -- re száll az a -- rany nap,
  Szól a ha -- rang ú -- jólag,
  Ér -- zel -- me -- im Hoz -- zád von -- nak,
  Is -- mét Té -- ged ál -- da -- lak.
  Á -- hí -- tat -- tal, csön -- des halk -- kal,
  Ezt só -- haj -- tom for -- ró ajk -- kal:
  Üd -- vöz -- légy...

  \set stanza = #"5."
  Ha fel -- jön az est csil -- laga,
  Mun -- kámat be -- vége -- zem,
  Is -- te -- nem -- nek há -- lát ad -- va,
  Fe -- léd tá -- rul két ke -- zem.
  Az es -- té -- li ha -- rang -- szó -- ra,
  In -- dul nyel -- vem e szép szó -- ra:
  Üd -- vöz -- légy...
}
\score {
  <<
    \new ChoirStaff <<
    % \new Lyrics = "sopranos" \with {
    %   This is needed for lyrics above a staff
    %     \override VerticalAxisGroup.staff-affinity = #DOWN
    % }
      \new Staff = "women" <<
        \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
        \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
      >>
      % \new Lyrics = "altos"
      % \new Lyrics = "tenors" \with {
      %   This is needed for lyrics above a staff
      %     \override VerticalAxisGroup.staff-affinity = #DOWN
      }
      \new Staff = "men" <<
        \clef bass
        \new Voice = "tenors" { \voiceOne \tenorMusic }
      \new Voice = "basses" { \voiceTwo \bassMusic }
      >>
    >>
    \new Lyrics = "sopranos" \lyricsto sopMusic \sopWords
    \new Lyrics = "altos" \lyricsto altoMusic \altoWords
    \new Lyrics = "tenors" \lyricsto tenorMusic \tenorWords
    \new Lyrics = "basses" \lyricsto bassMusic \bassWords

  >>
>>
}
