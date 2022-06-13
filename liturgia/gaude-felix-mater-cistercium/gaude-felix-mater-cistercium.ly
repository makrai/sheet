\version "2.20.0"

\header {
  title = "Carmen Rythmicum in laudem Cistercii"
%  subtitle = "subtitle"
  composer = "text: MS. Univ.  Coll., Oxon., J. i, ad finem"
  arranger = "accompaniment by József Pinczinger"
%  instrument = "instrument"
%  metre = "metre"
%  opus = "opus"
%  piece = "piece"
%  poet = "poet"
%  texidoc = "All header fields with special meanings."
%  copyright = "public domain"
%  enteredby = "jcn"
%  source = "urtext"
}

global = {
  \key d \major
  \time 11/4
}

\language "deutsch"

sopMusic = \relative {
  d'4 e fis fis4. a4 fis a h fis fis4.
  e4 fis a h4. a4 fis e fis d d4.

  d4 e fis fis4. a4 fis a h fis fis4.
  a4 h cis a4. a4 fis e e h h4.

  h4 cis d fis4. e4 fis d e h h4.
  d4 e fis a4. a4 fis a h fis fis4.

  fis4 gis a h4. h4 fis fis h cis a4.
  a4 h fis e4. h4 h h d h h4. 
}
sopWords = \lyricmode { 
% III.—CARMEN RYTHMICUM IN LAUDEM CISTERCII.
% [MS. Univ.  Coll., Oxon., J. i, ad finem.]


  \set stanza = #"2." 
Ar -- cha No -- e cont -- ra di -- lu -- vi -- um sal -- van -- do -- rum al -- ti -- or ca -- me -- ra,
Tu co -- lum -- ba de -- fe -- rens fo -- li -- um o -- li -- va -- rum pa -- cis sig -- ni -- fe -- ra,
Sca -- la Ja -- cob vi -- sa per som -- ni -- um pæ -- ni -- ten -- tes mit -- tis ad æ -- the -- ra,
Cha -- ri -- ta -- tis dis -- per -- gens mu -- ne -- ra, sac -- cus ci -- phi Jo -- seph pe -- cu -- li -- um.


% 4.Vellus rore complutum nubium pietatis exprimis ubera;
% Fons maxillæ dans refrigerium, lectionis frequentis littera,
% Funda David per jejunium hostem frangens in carne tenera,
% Sic cisterna Bethleem viscera reficiens pie precantium.
% 
% 5.Virgo fovens regale sericum, languidorum relevans onera,
% Tu reginæ Saba convivium contemplando subintras propera,
% Thronus regis tu, sanctuarium tu, altare expians scelera,
% Currus igneus quem fert in aera metus et spes, dolor et gaudium.
% 
% 6.Cedrus montis, hisopus vallium summa tenens, moderans infera,
% Aquas scindens Heliæ pallium, mala spernis, eligens prospera,
% Helisei gratum tugurium, in quo fessus refovet latera,
% Tu vas novum, salis quo misera corruptio sanatur fontium.  
}

altoMusic = \relative {
  d'4 e d d4. d4 d fis d d d4.
  cis4 d e d4. cis4 cis cis cis d d4.

  d4 e d d4. d4 d cis d d d4.
  fis4 fis fis e4. d4 d h h h h4.

  h4 cis h d4. h4 h h h h h4.
  d4 e d fis4. fis4 d cis d d d4.

  d4 e cis d4. fis4 d d fis e fis4.
  fis4 fis d h4. h4 h h h g h4.
}
altoWords =\lyricmode {
  \set stanza = #"1." 
Gau -- de, fe -- lix ma -- ter Cis -- ter -- ci -- um, fir -- ma -- men -- ti sme -- ra stel -- li -- ge -- ra,
Pa -- ra -- di -- sus lig -- no -- rum om -- ni -- um quem Di -- vi -- na plan -- ta -- vit dex -- te -- ra!
Fons e -- rum -- pens in quad -- rif -- lu -- vi -- um quo vir -- tu -- tum ri -- gan -- tur o -- le -- ra!
Te fun -- da -- vit Vir -- go per -- pe -- tu -- a, Tri -- ni -- ta -- tis sac -- rum tric -- li -- ni -- um.
}

tenorMusic = \relative {
  g4 a f g
}
tenorWords = \lyricmode {
  \set stanza = #"7." 
Fons qui cre -- vit in mag -- num flu -- vi -- um tu es, ma -- ter nos -- ter sic li -- be -- ra,
Tu -- us or -- do Cis -- ter -- ci -- en -- si -- um est in or -- be sol, lux et si -- de -- ra,
Ge -- ne -- ra -- le tu -- um col -- le -- gi -- um per vir -- tu -- tum cur -- rens i -- ti -- ne -- ra
Glo -- ri -- o -- sa vir -- go Chris -- ti -- fe -- ra ad sa -- lu -- tis per -- du -- cas bra -- vi -- um,
}

bassMusic = \relative {
  d4 e d d4. d4 d cis h h h4.
  a'4 a a g4. a4 a a a <a \parenthesize d,> d,4.

  d4 cis d d4. d4 d a' h h h4.
  fis4 fis a a4. d,4 d g g fis fis4.

  h4 a g fis4. g4 g g g fis fis4.
  d4 e d d4. d4 d fis h h h4.

  h4 <\parenthesize h e,> fis h4. h4 h h h a <\parenthesize a cis>4.
  a4 h a g4. fis4 fis fis g e fis4.
}
bassWords = \lyricmode {
  \set stanza = #"3." 
Ru -- bus ar -- dens monst -- rans pro -- di -- gi -- um cas -- ti -- ta -- tis vi -- res per o -- pe -- ra,
Vir -- ga du -- cis dans ma -- re per -- vi -- um, vi -- ta for -- ti trans -- cen -- dens as -- pe -- ra,
Tu co -- lum -- na duct -- rix fi -- de -- li -- um per de -- ser -- tum ad mon -- tis su -- pe -- ra,
Tes -- ta -- men -- ti dans ar -- cha fo -- de -- ra e -- le -- va -- tus clype -- us for -- ti -- um.
  ho ho ho ho
}

\score {
  <<
    \new ChoirStaff <<
          \new Lyrics = "sopranos" \with {
        % This is needed for lyrics above a staff
        \override VerticalAxisGroup.staff-affinity = #DOWN
      }
      \new Staff = "women" <<
        \new Voice = "sopranos" { \voiceOne << \global \sopMusic >> }
        \new Voice = "altos" { \voiceTwo << \global \altoMusic >> }
      >>
      \new Lyrics = "sopranos" 
      \new Lyrics = "altos"
      \new Lyrics = "tenors" \with {
        % This is needed for lyrics above a staff
        \override VerticalAxisGroup.staff-affinity = #DOWN
      }

      \new Staff = "men" <<
        \clef bass
        \new Voice = "basses" { << \global \bassMusic >> }
      >>
      \new Lyrics = "basses"
      \context Lyrics = "sopranos" \lyricsto "sopranos" \sopWords
      \context Lyrics = "altos" \lyricsto "altos" \altoWords
      \context Lyrics = "tenors" \lyricsto "basses" \tenorWords
      \context Lyrics = "basses" \lyricsto "basses" \bassWords
    >>
  >>
    \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
    }
    \context {
      \Voice
      \remove "Stem_engraver"
    }
    }
}

% Örülj, boldog anya
% Minden fa paradicsoma, amelyet az isteni jog ültetett!
% A folyóba törő szökőkút, ahol az erények zöldségei öntöznek!
% Az Örök Szűz alapított téged, a Szentháromság szent kamráját.
% 
% Noé bárkája az özönvízzel szemben az üdvözültek magasabb kamrája;
% Te vagy az olajfalevelet hordozó galamb, a béke zászlóvivője
% Jákob létráját bűnbánó álomban látták
% Jótékonysági ajándékokat szórva, József kincses pohártáskáját.
% 
% Az égő bokor, mely a tisztaság erejének csodáját mutatja be munkán keresztül,
% A herceg rúdja, amely átjárható tengert, bátor életet ad, amely meghaladja a durvaságot
% Te vagy az oszlop, amely a sivatagon keresztül vezeti a híveket a hegyek felé
% A Covenant egy ásóládát adva megemelte a harcosok pajzsát.
% 
% Szorítod a felhők gyapjúharmatát, mely jámbor kebleidre hullott;
% Az állcsont forrása, felfrissülést adó, közös betű olvasása
% Dávid parittyája gyorsan áttöri az ellenség gyengéd húsát,
% Ez a betlehemi gödör, amely felüdíti a jámbor imádkozók szívét.
% 
% A királyi selymet ápoló Szűzanya enyhíti a beteg emberek terheit
% Te, Sába királynője, sietve menj be egy bankettbe, és elmélkedj
% Te vagy a király trónja, te vagy a szentély, az engesztelő gonoszság oltára
% Tüzes szekér, mely félelmet és reményt, bánatot és örömet visz a levegőbe.
% 
% A hegy cédrusa, a völgyek közül a legmagasabbat tartó, az alsóbb szinteket irányító hisopus
% A víz megszaggatta Illés köpenyét, és megveti a rosszat, és a jó dolgokat választja
% Elizeus üdvözlő kunyhója, amelyben a fáradt oldalak újjáélednek
% Új sóedény vagy, amellyel a források nyomorult romlása gyógyítható.
% 
% Te vagy a szökőkút, amely nagy folyóvá nőtt, anyánk olyan szabad
% Az Ön ciszterci rendje a nap, a fény és a csillagok világában van
% Növelje főiskolai futási képességeit utazásokon keresztül
% Dicsőséges Krisztus, hozd el az üdvösség díját}
