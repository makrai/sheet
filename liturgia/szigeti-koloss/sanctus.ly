\version "2.22.1"
\language "deutsch"

\header {
  title = "Missa Hungarica -- Sanctus"
    composer = "Szigeti Kilián dallamára Koloss István összhangzatai" 
    % Csak a Kyrie elején
  tagline = "" %  "Szeretettel Bélának 1972."
}

% #(set-global-staff-size 16)
#(set-default-paper-size "a4landscape")

global = {
  \key f \major
  \time 2/4
  \set Staff.midiInstrument = "electric grand"
}

% ---------- szólamok ----------
rechtsOben = \relative c' {
  \voiceOne \global
  a'8 a g f g4 c, f8 g a4 b8 a g f g2
  c8 d c b a g f c f g a b a4 g 
  c8 c a f b a g4 c,2
  f8 g a a b a f a g4 g c8 c a f b a g8( d) f2 \bar "|."
}
rechtsMitte = \relative c' {
 \voiceTwo \global
  r1 r r r r r
  r4 e4 r d4 r d r2. d4 c2
  }

rechtsUnten = \relative c' {
  \voiceTwo \global
  c2 h4 b d2 c4 cis c h
  <h' e,>4 d, des c b2 e4 d cis c h b~b as
  <a c>8 <h d> c4 <d f>8 <c e> b4 <h cis> h cis c h 
  b~
   \once \override NoteHead.extra-offset = #'(1 . 0)
  b8 a16 g a4
}

linksOben = \relative c {
  \voiceOne \global
  f2~f4 fes a2 as4 g ges f
  a4 as g ges f2 a4 as g f f e~e2
  f2 g f g4 f f e f2

}
linksMitte = \relative c {
  \voiceTwo \global
  r1 f2 f4 e es d 
  c4 r4 r1 f4 f r1.
  c2 d d r1
}
linksUnten = \relative c {
  \voiceThree \stemDown \global
  f4 e d des 
  \override NoteColumn.force-hshift = #0
  c h b a as g
  f b es as, des g, c b a d g,2 ges
  f2~f g a4 d g, c f,2
}

textzeile = \lyricmode {
Szent vagy, szent vagy, szent vagy,
min -- den --ség U -- ra, Is -- te -- ne!
Di -- cső -- sé -- ged be -- töl -- ti a mennyet _ és a föl -- det.
Ho -- zsan -- na a ma -- gas -- ság -- ban!
Ál -- dott a -- ki jön az Úr ne -- vé -- ben,
Ho -- zsan -- na a ma -- gas -- ság -- ban!
}


% ---------- kotta ----------
\score {
  <<
    \new PianoStaff <<
      \new Staff = "RH" <<
        \clef treble
        \new Voice = "rechtsOben" { \voiceOne \rechtsOben }
        \new Voice = "rechtsMitte" { \voiceTwo \rechtsMitte }
        \new Voice = "rechtsUnten" { \voiceTwo \rechtsUnten }
      >>
      \new Lyrics \lyricsto "rechtsOben" { \textzeile }
      \new Staff = "LH" <<
        \clef bass
        \new Voice = "linksOben" { \voiceOne \linksOben }
        \new Voice = "linksMitte" { \voiceTwo \linksMitte }
        \new Voice = "linksUnten" { \voiceThree \linksUnten }
      >>
    >>
  >>
  \layout{}
\midi {}
}
