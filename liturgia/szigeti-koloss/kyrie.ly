\version "2.22.1"
\language "deutsch"

\header {
  title = "Missa Hungarica -- Kyrie"
  composer = "Szigeti Kilián dallamára Koloss István összhangzatai"
  tagline = "" % Szeretettel Bélának 1972."
}

% #(set-global-staff-size 16)
#(set-default-paper-size "a4landscape")

global = {
\key f \major
\time 3/4
\set Timing.beamExceptions = #'()
\set Timing.beatStructure = 2,2,2
\set Staff.midiInstrument = "electric grand"
}

% ---------- szólamok ----------
rechtsOben = \relative c' {
\voiceOne \global
c8 d f f f4 \fermata f8 g a a a4 \fermata c8 a b g f4 \fermata 
a8 f g g f4 \fermata a8 f g g f4 \fermata d8 c f g g4 \fermata 
c,8 d f f f4 \fermata f8 g a a a4 \fermata c8 a b g f4 \fermata  \bar "|."
}
rechtsUnten = \relative c' {
\voiceTwo \global
c4 c des es d <g es> d4 ces8 <d b> <ces a>4
c4 d es d cis c b <d gis> <h f>
c4 c des es d <g es> d4 ces8 <d b> <ces a>4
}

linksOben = \relative c' {
\voiceOne \global
a as g ces b a as f8 e f4
a4 h a as g ges f e des
a' as g ces b a as f8 e f4
}
linksMitte = \relative c {
\voiceTwo \global
r4 d r f e r4 r2.
f4 f f f e es d h as
r4 d r f e r4 r2.
}
linksUnten = \relative c {
\voiceThree \stemDown \global
  \override NoteColumn.force-hshift = #0
f4 b, es des c f b, g8 c f,4
d'4 d c b a as g e des
f'4 b, es des c f b, g8 c f,4
}

textzeile = \lyricmode {
U -- ram ir -- gal -- mazz,
U -- ram ir -- gal -- mazz,
U -- ram ir -- gal -- mazz!
Krisz -- tus ke -- gyel -- mezz,
Krisz -- tus ke -- gyel -- mezz,
Krisz -- tus ke -- gyel -- mezz!
U -- ram ir -- gal -- mazz,
U -- ram ir -- gal -- mazz,
U -- ram ir -- gal -- mazz!
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
\midi { }
}
