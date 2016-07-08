\include "deutsch.ly"
\version "2.10.33"
global = { \key d \minor }
sopMusic = \relative a {
  a4 f' e d a' a e f e d b a e' f d2
  a4 f' e d a' a e f e d b a e' f d2
  e4. e8 f4 d g8 g b4 a2 b4 a g f e d f e
  a a d a c b a2 a4 b a g f e d2
} 
altoMusic = \relative a {
  a4 d cis d d cis cis d cis d b b cis cis d2
  a4 d cis d d cis cis d cis d b b cis cis d2
  h4 c a b d c2. d1 cis4 b h cis
  d cis f c e e c2 cis4 d d d d cis d2
}
tenorMusic = \relative a {  
  a4 a a a f e a a g a d, e g2 f2
  a4 a a a f e a a g a d, e g2 f2
  gis4 e f f g8 e g4 f2 g4 f g a a f d a'
  f g b a g e f2 e4 g f g a a8 g f2
} 
bassMusic = \relative a {
  a4 d, e f d a a d e f b, cis a2 d
  a'4 d, e f d a a d e f b, cis a2 d
  e8 d a g f4 b b8 c e4 f2 g,4 a b d a b gis a
  d e b f' e c f2 a,4 g a b d a d2
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
    \context Lyrics = "altos" \lyricsto "sopranos" \altoWords 
    \context Lyrics = "tenors" \lyricsto "sopranos" \tenorWords
    \context Lyrics = "basses" \lyricsto "sopranos" \bassWords
  >>
>>
}

