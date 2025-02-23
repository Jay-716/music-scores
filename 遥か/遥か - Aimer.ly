\version "2.24.4"

\header {
  title = "遥か"
  subtitle = "遥不可及（日剧＆电影《擅长捉弄的高木同学》主题曲）"
  poet = "Aimer"
  composer = "田中ユウスケ"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key f \minor
  \tempo 4=80
  \time 4/4
}

right = \relative c' {
  r8 ees8 aes bes ees ees, aes bes | r ees, aes bes ees ees, aes bes |
  bes ees, aes bes ees ees, aes bes | bes ees, aes bes ees ees, aes bes |
  r8 ees ees ees16 16~8 c des ees | ees4 f8 des~2 |
  r8 bes bes bes bes c des ees | des4 c8 8~2 |
  r8 aes8 8 16 16~8 bes c4 | c4 des8 bes8~4 r8 aes |
  c4. des8 bes4. aes8 | 4 r8 aes' g ees bes4 |
  aes'8 g f ees des c16 bes16~16 c8. | c4 ees8 g, aes ees ees'4 |
  f8 ees des c bes c16 bes16~8 aes16 16 ~ | aes4 r8 aes' g ees bes g |
  ees'4~8 c16 ees16~8 c ees aes | c4. des8 2 |
  bes4~8 aes16 bes16~8 c, ees aes | bes4. c8 2 |
  aes4~8 g16 aes16~8 g aes c | c4 des8 f,8~4 r8 bes |
  aes4. bes8 f4. g8 | aes2. r8 aes8 |
  c8 des16 bes16~8 aes16 bes16~8 c16 aes16~8 g16 aes16 ~ | aes2. r8 aes8 |
  c4. des8 bes4. aes8 | aes4 ees bes aes |
  g16 aes bes8 aes g ees bes aes g | r8 ees''8 8. 16 8 c des ees |
  ees4 f8 des8~2 | r8 bes8 8 8 8 c des ees |
  des4 c8 8~2 | r8 aes8 8 16 16~8 bes c c |
  c4 des8 bes8~4 r8 aes | c4. des8 bes4. aes8 |
  aes4 ees f g | aes8 c16 des c bes aes8 ees8. aes16~8 aes' |
  aes'8. ees16~8 aes,8~16 ees8. aes,4 | aes'8 g f ees des c16 bes16~16 c8. |
  c4 r8 aes'8 g ees aes,4 | f'8 ees des c bes c16 bes16~8 aes16 16 ~ |
  aes4 r8 aes'8 g ees bes g | ees'4~8 c16 ees16~8 c ees aes |
  c4. des8 2 | bes4~8 aes16 bes16~8 c, ees aes |
  bes4. c8 2 | aes4~8 g16 aes16~8 g aes c |
  c4 des8 f,8~4 r8 bes8 | aes4. bes8 f4. g8 |
  aes4 c, ees aes | ees4~8 c16 ees16~8 c ees aes |
  c4. des8 2 | bes4 8 aes16 bes16 8 c, e g |
  bes4. c8 2 | aes4~8 g16 aes16~8 g aes c |
  c4 des8 f,8~4 r8 bes8 | aes4. bes8 f4. g8 |
  aes4 r8 g8 aes ees'4 aes,8 | c8 des16 bes16~8 aes16 bes16~8 c16 aes16~8 g16 aes16 ~ |
  aes2. r8 aes8 | c4. des8 bes4. aes8 |
  aes4 ees bes aes | g16 aes bes8 aes g ees bes aes g |
  <aes ees'>1 ~ | 1 |
}

left = \relative c {
  \clef bass
  <aes ees'>1 | <des f> | <aes ees'>1 | <des f> |
  aes8 ees' aes ees c'2 | des,8 f aes f ees'4 des |
  ees,8 g bes g ees'2 | f,8 aes c aes f4 ees |
  des8 f aes f des'2 | bes,8 des f des bes'4 aes |
  des,8 f aes des, ees g bes g | aes, ees' aes ees aes ees aes ees |
  des8 aes' ees'4 ees,8 bes' ees4 | f,8 aes c aes c aes c aes |
  des, aes' ees'4 ees,8 bes' ees4 | f,8 aes c aes ees4 ees, |
  aes8 ees' aes ees aes ees aes ees | des8 f aes f des' f, aes f |
  ees8 g bes g bes g bes g | f aes c f, c' aes c aes |
  des,8 f aes f des' f, aes f | bes,8 f' aes f aes f aes f |
  des8 f aes f ees g bes g | f8 aes c aes f c' ees, c' |
  des,8 f aes f ees g bes g | f8 aes c aes d, aes' c aes |
  des,8 f aes f ees g bes g | aes,8 ees' aes ees aes ees aes ees |
  aes,8 ees' aes ees aes ees c bes | aes ees' aes ees aes ees aes ees |
  des8 f aes f des' f, aes f | ees g bes g bes g bes g |
  f8 aes c aes c aes c aes | des,8 f aes f des' f, aes f |
  bes,8 f' aes f aes f aes f | des8 f aes f ees g bes g |
  aes,8 <ees' aes>8 8 8 8 8 8 8 | 8 8 8 8 8 8 8 8 |
  des8 aes' ees'4 ees,8 bes' ees4 | des,8 aes' ees'4 ees,8 bes' ees4 |
  f,8 aes c aes c aes c aes | des,8 aes' ees'4 ees,8 bes' ees4 |
  f,8 aes c aes ees4 ees,4 | aes8 ees' aes ees aes ees aes ees |
  des8 f aes f des' f, aes f | ees g bes g bes g bes g |
  f8 aes c aes c aes c aes | des,8 f aes f des' f, aes f |
  bes,8 f' aes f bes f aes f | des8 f aes f ees g bes g |
  f8 aes c aes ees aes c aes | aes,8 ees' aes ees aes ees aes ees |
  des8 f aes f des' f, aes f | ees g bes g e g bes g |
  f8 aes c aes d, aes' c aes | des,8 f aes f des' f, aes f |
  bes,8 f' aes f bes f aes f | des8 f aes f ees g bes g |
  f8 aes c aes f c' ees, c' | des,8 f aes f ees g bes g |
  f8 aes c aes d, aes' c aes | des,8 f aes f ees g bes g |
  aes,8 ees' aes ees aes ees aes ees | aes,8 ees' aes ees aes ees c bes |
  aes1 ~ | 1 |
}

\score {
  \new PianoStaff <<
    \set PianoStaff.connectArpeggios = ##t
    \new Staff = "right" \with { midiInstrument = "acoustic grand" }
    { \global \right \bar "|."}
    \new Staff = "left" \with { midiInstrument = "acoustic grand" } 
    { \global \left }
  >>
  \layout { }
  \midi {
    \tempo 4=80
  }
}
