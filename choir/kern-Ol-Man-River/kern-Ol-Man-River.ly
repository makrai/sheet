\include "deutsch.ly"
\version "2.10.33"
global = { \key es \major }
sopMusic = \relative b' {
  b8 as g4 g b8 as g4 b c8 es4. b8 as g4 g b8 as g4 es f2
  g8 f es4 es g8 f es4 es f8 as4. g8 f es4 es g8 f es4 f es2
  d'4 b c4. << es8 c>> d4 b c4. << es8 c>> d4 b c4. << es8 c>> d4 b c2
  b4 g a4. c8 b4 g a4. c8 b4 g a4. c8 b4 g f2 
  b8 as g4 g b8 as g4 b c8 es4. b8 as g4 g b8 as g4 as f2
  as8 g f4 f as8 g f4 f g8 b4. as8 g f4 f as8 g f4 g es2

  es2 es es es g as g g f f f f es1~ es

  b4 b c8 es4 c8 b4 b c8 es4 f8 g4 b c8 b4 c8 es4 es d8 c4 d8 
  b4 b g8 f4 g8 b4 b g8 f4 g8 es1~ es % én / bűnös vagyok, mert
  d'4 b c4. << es8 c>> d4 b c2 d8. d16 b4 c8. c16 es4 d4 b c4. c8
  b4 g a4. c8 b4 g a4. c8 b8. b16 g8. g16 as4 c8. c16 b4 g f2 
  b,4 b es2~ es es4. f8 g4 b c8 b4 c8 es4 es f8 es4 f8 
  g4 g f8 es4 f8 g4 g f8 es f4 es2 as, es'1 % néger jogát 
} 
altoMusic = \relative g' {
  g8 f es4 es g8 f es4 g es es8 f g f es4 es g8 f es4 b c d 
  des1~ des2 c4 es es2. es8 d c4 d es2
  b'4 g a4. fis8 b4 g a4. fis8 b4 g fis4. fis8 g4 e fis2
  g2 fis g fis g4 f es4. a8 g4 g c, d
  g8 f es4 es g8 f es4 g es8 es4. e8 e e4 e e8 e e4 e c2 % Partja
  h4 h h h h h b es es es es es es c8 d b2

  b2 c b c es es es es d c d c4 d es1~ es

  b4 b c8 es4 c8 b4 b c8 c4 c8 es2 es es es d c d c4 d es1 b
  b'4 g a4. fis8 b4 g fis2 e2 fis g fis g fis g fis g4 f es a d, d c d 
  b b c8 es4 c8 b4 b c8 es4 c8 es4 g as8 as4 as8 g4 g a8 a4 a8 
  b4 b g8 g4 g8 a4 a as8 as as4 g2 as b1
}
tenorMusic = \relative b {
  b2 b b as4 c es b2. b4 g as b
  b8 as g4 g b8 as g4 b c h b8 as g4 g g a as g2
  d'2 es4 c d2 es4 c d2 es4 d d b a2 % Mennyi
  d4 b c es d b c es d b c es d b as b 
  es des2 des4 des2 c c8 c b4 b des8 c b4 b b as % Part
  f8 g as4 as f8 g as4 as b g f8 g as4 as f8 g as4 as g2

  g2 g g as b c b g b as b as g4 b8 g c as4 f8 g1

  g2 g g es b'4 g g2 b2 a as as as as g4 b c8 as4 c8 g1
  d'2 es4 c d2 es4 d d2 es4 c b2 a
  d4 b c es d b c es d b c es d b as2
  b,4 b g'2~g as4. as8 b4 es d8 d4 d8 c4 c c8 c4 c8
  es4 es es8 es4 es8 es4 es d8 c d4 es2 f g1
} 
bassMusic = \relative es {
  es4 g b b, es2 as es2. b4 es2 b es1~es4 g as f b,2. c4 f4 b, es2
  g1 g g2 a b4 g a d, g1 g g2 fis g b, % Mennyi
  es es es as g4 c, c c c c f2 % Part
  d4 d2 d4 d2 es ces4 ces2 ces4 ces b es2 % a munkás

  b4 b c8 es4 c8 b4 b c8 es4 f8 g4 g f8 es4 f8 g4 b c8 b4 c8 b4 b g8 f4 g8 b4 b
  g8 f4 g8 es2 as, es'1

  es2 c es as, es' c g' ges f b, f' b, es as, es'1
  g1 g2 d g d g a4 d, g,1 g g2 fis g4 g as b
  b b c8 es4 c8 b4 b c8 es4 es8 es4 d8 c b8 b4 b8 c4 c f8 f4 f8 b4 b c8 c4 c8
  f,4 f b8 b b4 <<b2 es,>> <<c' es,>> <<b'1 es,>>
}
sopHuWords = \lyricmode {
  Höm -- pö -- lyög -- ve zúg a Mis -- sis -- sip -- pi,
  ró -- la men -- nyi ő -- si nó -- ta szól
  Né -- ge -- rek -- nek ten -- ger kön -- nyét vi -- szi
  Szá -- za -- dok -- nak vég -- te -- len -- jén át.

  Men -- nyi könny és men -- nyi vér
  hul -- lott be -- léd, te vén fo -- lyó?
  Men -- nyi á -- lom, szen -- ve -- dés
  fe -- lett su -- hant el sok ha -- jó?

  Part -- ja men -- tén kó -- cos gya -- pot te -- rem,
  fe -- hér em -- ber ott a gő -- gös úr.
  De a mun -- kás min -- dig bar -- na le -- gyen,
  és a kor -- bács két vál -- lá -- ra hull.

  m __ _ _ _ _ _ _ _ _ _ _ _ _ 

  Fá -- radt va -- gyok, a lel -- kem zo -- kog,
  de ben -- nem sza -- bad -- ság láng -- ja lo -- bog, én
  bű -- nös va -- gyok, mert én csak né -- ger va -gyok.
  Bán -- ta -- nak nem szól  -- ha  -- tok, gú -- nyol -- nak ám -- de én
  hall -- ga -- tok
  az én né -- pem száz szent da -- la a rab -- sá -- gunk -- nak bús, fá -- jó só
  -- ha -- ja
  Mé -- gis da -- lol és mesz -- sze vi -- szi a szí -- vünk da -- lát
  a né -- ger jo -- gát, az em -- ber ö -- rök jo -- gát.
}
sopWords = \lyricmode {
  % A verszakok egy másik lehetséget sorrendje:
  % Colored... Don't look up... 
  Dare's an ol' man cal'd de Mis -- sis -- sip -- pi
  Dat's de ol' man dat I'd lek to be
  Whot does he care
  iv de world gets trau -- ble
  Whot does he care iv de land lev's free.

  Don't look up % 9
  An' don't look down,
  You don' dast make
  De white boss frown.
  Bend your knees
  An' bow your head,
  An' pull date rope
  Un -- til you' dead.

  Col -- ored folks work on de Mis -- sis -- sip -- pi, % 17
  Col -- ored folks work while de white folks play,
  Pull -- in' dose boats from de dawn to sun -- set,
  Git -- tin' no rest till de judge -- ment day.

  m __ _ _ _ _ _ _ _ _ _ _ _ _ 
  
  He_don' plant ta -- ter, % 33
  He don' plant cot -- ton,
  An' dem dat plants 'em
  Is soon for -- got -- ten,
  but ol' man riv -- er,
  He jes' keeps roll -- in' a -- long.

  You an' me, we sweat an' strain, % 41
  Bod -- y all ach -- in an' racked wid pain. _
  Tote dat barge! _
  Lif' dat bale! yee 
  Git a lit -- tle drunk
  An' you land in jail.

  I gits wea -- ry
  I'm tired of liv -- in'
  An' skeered of dy -- in',
  But ol' man riv -- er,
  He jes' keeps roll -- in' a -- long! __ _ _ 
}
altoWords = \lyricmode {
  Dare's an ol' man cal'd de Mis -- sis -- sip -- pi _
  Dat's de ol' man dat I'd lek to be _
  Whot does he care iv de land lev's free.

  Don't look up % 9
  An' don't look down,
  You don' dast make
  De white boss frown.
  Bend your head,
  An' pull date rope
  Un -- til you' dead. _

  Col -- ored folks work on de Mis -- sis -- sip -- pi, % 17
  Col -- ored folks work while de white folks play,
  Pull -- in' dose boats un -- to sun -- set,
  Git no rest till judge -- ment _ day.

  m __ _ _ _ _ _ _ _ _ _ _ _ _  _
  
  He_don' plant ta -- ter, % 33
  He don' plant cot -- ton,
  An' dem for -- got -- ten,
  ol' man
  roll -- in' a -- long. _

  You an' me, we sweat an' strain, % 41
  Bod -- y an' pain. 
  Lif dat bale! and
  Git a drunk
  An' land in jail. _

  I gits wea -- ry
  An' sick of try -- in'
  I'm tired of liv -- in'
  An' skeered of dy -- in',
  But ol' man jes' rolls,
  He jes' keeps roll -- in' a -- long! __ _ _

  Ol' man riv -- er,
  Dat ol' man riv -- er
  He mus' know sum -- pin'
  But don't say nuth -- in',
  He jes' keeps roll -- in'
  He keeps on roll -- in' a -- long.
}
altoHuWords = \lyricmode {
  Höm -- pö -- lyög -- ve zúg a Mis -- sis -- sip -- pi, _
  ró -- la men -- nyi ő -- si nó -- ta szól _
  Szá -- za -- dok -- nak vég -- te -- len -- jén át.

  Men -- nyi könny és men -- nyi vér
  hul -- lott be -- léd, te vén fo -- lyó?
  á -- lom fe -- lett su _ -- hant el sok ha -- jó? _

  Part -- ja men -- tén kó -- cos gya -- pot te -- rem,
  fe -- hér em -- ber ott a gő -- gös úr.
  a mun -- kás bar -- na le -- gyen, _
  kor -- bács két vál -- lá -- ra _ hull.

    m __ _ _ _ _ _ _ _ _ _ _ _ _  _ 

  Fá -- radt va -- gyok, a lel -- kem zo -- kog,
  a lel -- kem zo -- kog,
  bű -- nös né -- ger _ va -gyok.
  Bán -- ta -- nak nem szól  -- ha  -- tok, csak
  hall -- ga -- tok
  né -- pem da -- la rab -- ság fá -- jó só
  -- ha -- ja _
  Mé -- gis da -- lol a né -- pem to -- vább, és mesz -- sze vi -- szi a szí -- vünk da -- lát
  a né -- ger jo -- gát, az em -- ber ö -- rök jo -- gát.
}
tenorWords = \lyricmode {
  Dare's an ol' man _
  dat I'd lek to be _
  Whot does he care
  iv de world gets trau -- ble
  Whot does he care iv land lev's free.

  Don't look _ up % 9
  You _ don' make
  De white boss frown.
  Bend your knees
  An' bow your head,
  An' pull date rope
  Un -- til you' dead. _

  Col -- ored folks work there
  Col -- ored folks work while de white folks play, _
  Pull -- in' dose boats from de dawn to sun -- set,
  Git -- tin' no rest till de judge -- ment day. 

  m __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
  
  Not plant cot -- ton,
  dem _ for -- got -- ten,
  ol' man riv -- er
  jes' keeps roll -- in' a -- long.

  You an' _ sweat an' _ %strain, % 41
  Bod -- y _ an' pain. 
  Tote dat barge! _
  Lif' dat bale! _ 
  Git a drunk
  An' land in jail.

  I gits wea -- ry
  I'm tired of liv -- in'
  An' skeered of dy -- in',
  But ol' man riv -- er,
  He jes' keeps roll -- in' a -- long! __ _ _

  Ol' man riv -- er,
  Dat ol' man riv -- er
  He mus' know sum -- pin'
  But don't say nuth -- in',
  He jes' keeps roll -- in'
  He keeps on roll -- in' a -- long.
}
tenorHuWords = \lyricmode {
  Höm -- pö -- lyög, zúg, _
  men -- nyi nó -- ta szól, _
  Né -- ge -- rek -- nek ten -- ger kön -- nyét vi -- szi
  Szá -- za -- dok vég -- te -- len -- jén át.

  Men -- nyi _ vér, hul _ -- lott,
  te _ vén fo -- lyó?
  Men -- nyi á -- lom, szen -- ve -- dés
  fe -- lett su -- hant el sok ha -- jó? _

  Part men -- tén gya -- pot,
  fe -- hér em -- ber ott a gő -- gös úr. _
  De a mun -- kás min -- dig bar -- na le -- gyen,
  és a kor -- bács két vál -- lá -- ra hull.

    m __ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _

  Fá -- radt va -- gyok, lel _ -- kem zo -- kog,
  bű -- nös né -- ger va _ _ _ _ -gyok.
  Nem szól _  -- ha  -- tok, _ csak
  hall -- ga -- tok
  az én né -- pem száz szent da -- la a rab -- ság fá -- jó só
  -- ha -- ja  
  Mé -- gis da -- lol, és mesz -- sze vi -- szi a szí -- vünk da -- lát,
  a né -- ger jo -- gát, az em -- ber ö -- rök jo -- gát.
}
bassWords = \lyricmode {
  Dare's an ol' man, Mis -- sis -- sip -- pi, I'd be
  Whot does he care
  iv de land lev's free.

  Don't look up % 9
  don' make
  De white frown.
  Bend, bow, pull 
  Un -- til death

  Col -- ored folks work 
  Col -- ored work while de white play,
  Pull dose to sun -- set,
  No rest till judge -- ment day.

  Ol' man riv -- er,
  Dat ol' man riv -- er
  He mus' know sum -- pin'
  But don't say nuth -- in',
  He jes' keeps roll -- in'
  He keeps on roll -- in' a -- long. _ _
  
  Not plant cot -- ton,
  dem for -- got -- ten,
  ol' man riv -- er,
  rolls a -- long.

  You an' strain, % 41
  Bod -- y an' pain. _
  Lif' dat bale!
  an' land in jail. _

  I gits wea -- ry
  An' sick of try -- in' 
  I'm tired of _ liv -- in'
  An' skeered of dy -- in',
  But ol' man riv -- er,
  He jes' keeps roll -- in' a -- long! __ _ _

}
bassHuWords = \lyricmode {
  Höm -- pö -- lyög -- ve zúg, búg
  nó -- ta szól _
  Szá -- za -- dok -- nak vég -- te -- len -- jén át.

  Men -- nyi  vér,
  te vén fo -- lyó? _
  su -- hant sok ha -- jó? _

  Part -- ján gya -- pot,
  fe -- hér em -- ber gő -- gös úr.
  a mun -- kás bar -- na 
  kor -- bács vál -- lá -- ra hull.

  Zúg a fo -- lyó, a szél búg, su -- sog, 
  a szí -- vem mé -- lyén a bá -- nat zo -- kog,
  mert né -- ger va -- gyok, én min -- dig bű -- nös va -- gyok. _ _ 

  Fá -- radt va -- gyok, lel -- kem zo -- kog,
  bű -- nös né -- ger va _ -- gyok.
  nem szól  -- ok, csak
  hall -- ga -- tok _
  én né -- pem bús só -- ha -- ja _
  Mé -- gis da -- lol a né -- pem to -- vább, és mesz -- sze _ vi -- szi a szí -- vünk da -- lát
  a né -- ger jo -- gát, az em -- ber ö -- rök jo -- gát.
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
    \context Lyrics = "altos" \lyricsto "altos" \altoWords 
    \context Lyrics = "tenors" \lyricsto "tenors" \tenorWords
    \context Lyrics = "basses" \lyricsto "basses" \bassWords
  >>
>>
}

