\version "2.24.4"

\header {
  title = "Days of Love"
  subtitle = "ATRI -My Dear Moments-"
  composer = "松本文纪"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \tempo 4=84
  \time 4/4
}

music = \relative {
  cis''8 c~2 f,8 fis | gis~2 cis,8 dis~8 | f4 cis8~2 \bar "||"
  cis'8 | c~2 f,8 fis gis~ |4 dis'8~8 cis dis dis8~8 | f8 c8~8 cis4 \bar "||"
  
  cis,8 dis4 | dis8 dis4 f8 cis~8 c4 | cis4~2
  dis8 dis8~ |8 f8 fis4 f8 dis8~8 f8 | cis8~2 \bar "||"
  
  \key c \major
  ais8 c8 cis8~ |4 cis8 cis8 ais8 cis8 f8 f8 | dis8 dis8 cis8 dis8~2 | \bar "||"
  
  cis'4 cis4 dis4. gis,,8[ | c8 cis8~]4 8 8 c8 8 | cis8 dis8 f8 fis8 f4 \bar "||"
  dis8 dis8~ |16 cis4~8 c8 c8 cis16 c8 gis16 ais16~ |4 \bar "||"
  c8 cis8 c16~8 gis8 fis'8 f16~ |8 dis8 dis f16 dis16~8 cis8~4 | \bar "||"
  c8 cis16 c16~8 ais4 ais8 cis8 dis8 | f8 dis8 dis8 cis16 dis4~16 \bar "||"
  
  cis8 c | cis4 ais8 cis cis c c cis | dis f fis8 f4 dis8 dis8. cis16~ |4 \bar "||"
  c8 c cis16 c~8. gis16 ais8~ |8
  c8 cis8 c16~8 gis fis' f16~8 | dis8 dis f16 dis16~8 cis4 \bar "||"
  c8 cis16 c16~ |8 ais4 ais8 fis' f dis4~ |4 dis8 f16 cis16~8 c16 cis4~16 | \bar "||"
  
}

\score {
  \new PianoStaff <<
    \new Staff = "music" \with { midiInstrument = "acoustic grand" } {
      \music
    }
  >>
  \layout {}
  \midi {
    \tempo 4=84
  }
}
