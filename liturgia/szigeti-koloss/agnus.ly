\version "2.22.1"
\language "deutsch"

\header {
  title = "Missa Hungarica -- Agnus"
    % composer = "Szigeti Kilián dallamára Koloss István összhangzatai"
    % Csak a Kyrie elején
  tagline =  "Szeretettel Bélának 1972."
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
  \repeat volta 2 {
  c8 f a f c4. g'8 c b a g b a g f g2 a8 g f d c2
  }
  c8 f a f c4. g'8 c b a g b a g f g2 a8 g f d c2 \bar "|."
}
rechtsUnten = \relative c' {
  \voiceTwo \global
  \repeat volta 2 {
  a4 b c b d b c d des c cis c b2
  }
  a4 <g des'> fis g <d' g> b c d des c <es a,> c c2
}

linksOben = \relative c' {
  \voiceOne \global
  \repeat volta 2 {
  g4 a a a a g a a g g g ges e2
  }
  f4 es d es a g a a g g g as g2
}
linksMitte = \relative c {
  \voiceTwo \global
  \repeat volta 2 {
  c4 d e d c d e
  \override Stem.transparent = ##t
  f~f
  \revert Stem.transparent
  e r1
  }
  c4 b a b c d e f
  \override Stem.transparent = ##t
  f
  \revert Stem.transparent
  e c d
  \override Stem.transparent = ##t
  f
  \revert Stem.transparent
  e
}
linksUnten = \relative c, {
  \voiceThree \stemDown \global
    \override NoteColumn.force-hshift = #0
  \repeat volta 2 {
  f4 g a g f g a b h b a as g ges
  }
  f4 es d es f g a b h c f, b c2
}

textzeile = \lyricmode {
  \repeat volta 2 {
Is -- ten Bá -- rá -- nya, te el -- ve -- szed a vi -- lág bű -- ne -- it,
ir -- gal -- mazz ne -- künk!
}
Is -- ten Bá -- rá -- nya, te el -- ve -- szed a vi -- lág bű -- ne -- it,
adj ne -- künk bé -- két!
}

% ---------- kotta ----------
\score {
  <<
    \new PianoStaff <<
      \new Staff = "RH" <<
        \clef treble
        \new Voice = "rechtsOben" { \voiceOne \rechtsOben }
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
