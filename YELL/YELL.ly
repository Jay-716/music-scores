\version "2.24.4"

\header {
  title = "YELL"
  composer = "水野良樹"
  instrument = "いきものがかり"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key d \minor
  \tempo 4=75
  \time 4/4
}

right = \relative c' {
  \time 4/4
  <d' f>8 \p [e16 f8] g8. <c, e a>4. r8 | <bes d>8 [c16 d8] e8. <a, c f>4. r8 |
  bes8 [a16 bes8] c8. <bes d>8 e f g | <d e a>8 [bes'16 a8] g8. <cis, a'>4. r8 |

  <d f>8 [e16 f8] g8. <c, e a>4. r8 | <bes d>8 \cresc [c16 d8] e8. <a, c f>4. r8 |
  bes8 [a16 bes8] c8. <bes d>8 e f g | <d e a>4. r8 <a cis>2 |

  \time 2/4
  r4 \mp r16 d16 d e |
  \time 4/4 \repeat volta 2 {
    f4. a16 e4. r16 d16 c | d8. 16 c8 bes16 a4. r16 bes16 a |
    g16 a bes4 g16 g f g a8 r16 d8 e16 | <bes f'>4 r16 f'16 e d cis d e8 r16 d16 d e |
    f4. a16 e4. d16 c c | <f d>8. d16 c8 bes16 a4.r16 bes16 a |
    <bes, g'>16 a' bes4 g16 g f g a4 d16 e | <bes d f>8. d16 <g, cis e>8. cis16 \once \stemDown <f, d'>4 r8 f16 g |
    <d a'>8 a''16 16 16 8 f16 g [a c,8.] c,16 [f g] | <f a>8 a'16 16 16 8 f16 g [a c,8.] f,16 [a c] |
    <f, bes>8 bes16 c d8 f <g, e'> cis d e16 e | <a, d g>8. f'16 <a, d f>8. f'16 <a, d g>8. f'16 <a, d f>4 |
    <a d>8 <a a'>16 16 8 16 f'16 g a c,8. 16 c'16 bes | <c, f a>8 <c c'>16 16 16 8 a'16 g f16 8 r16 f,16 a c |
    <f, bes>8 bes16 c <bes d>8 bes,16 d c8 c'16 d <c e>8 c,16 e | d16 \cresc d'16 16 e <d f>8 f, <bes d>8. <f f'>16 <g g'>8 f'16 <a, a'>16 |
    <d e>4 e,8 a r8 e16 [a8] bes'16 a g | <cis, e>8 4 <g cis e>8 r4 r8

    d'16 \ff e |
    <d f>8 [<c e>16 <d f>8.] <a' c>16 [8.] <g bes>16 [8.] <d f>16 <e g>16~ | 8 <f a>16 <e g>8. <d f>16 [<f a>8.] r8 r8 d16 e |
    <a, d f>8 [e'16 f8.] a16 [16] <bes, d f>8 [bes'16 d,8] <f, d'>16 <a f'> <g e'>16~ |
    8 <f d'>16 16 <g e'>8 <e' g> <g bes>8. <e a>16 16 d e <d f>16~ |
    8 [<c e>16 <d f>8.] <a' c>16 [8.] <g bes>16 [<f a>8.] <d f>16 [16] |
    <e g>8 [<f a>16 <e g>8.] <d f>16 [<f a>8.] r8 r8 d16 e |
    <a, d f>8 [e'16 f8.] a16 [16] <bes, d f>8 [bes'16 d,8] 16 [f e] |
    \alternative {
      \volta 1 {
        <g, c>4 \decresc r4 <e g>4 bes''8 a16 16 | <d, f>8 \mp [e16 f8] g8. <c, e a>4. r8 |
        <bes d>8 [c16 d8] e8. <a, c f>4. r8 |
        bes8 [a16 bes8] c8. <bes d>8 e f g |
        <d e a>4. r8 <g, a cis>4 a16 d d e |
      }
    }
  }
  <g, c>4 r4 <e g>4 bes''8 a16 16 |

  r4 <d, f bes d>4 <e a c e>8. e16 a16 c16 <e, e'>8 | <a d f a>8 <e e'> <d d'> <c f c'>4. \tuplet 3/2 8 { f,16 a c d a' c } |
  \ottava 1 <f, bes d f>8 [<a g'>] <e bes' e a> <c f c'>4 <a a'>8 <c c'>4 \ottava 0 |
  <d g a d>4 <g, a d> <fis a d> fis,16 a d8 |
  <f bes c>8 <f f'>8 8 16 16 <g g'> <a a'>16 16 <d f>16 16 8 16 |
  <f, bes c>16 <f f'>16 16 16 8 16 16 <g g'> <a a'> <a d f a> <d f>16 8 8 |
  <f, bes>8 <f f'>16 16 8 <c f>16 16 <a c f>8 <f' f'>16 16 8 <c' f> |
  <bes g' bes>8 <a f' a>8 8 <g e' g>8 8 <a f' a>8 <g g'>16 <f f'>8. |
  <f bes c>8 <f f'>16 16 16 16 16 16 <g g'> <a a'> <a d f a> <d f>16 16 16 16 16 |
  <f, bes c>8 <f f'>16 16 16 16 16 16 <g g'> <a a'> <a d f a> <d f>16 16 16 16 16 |
  <f, bes>8 <f f'>16 16 8 <c f>16 16 <a c f>8 <f' f'>16 16 8 <c' f> |
  <bes g' bes>4 <a f' a>8 <g e' g>8 8 <a f' a> <g g'>16 <f f'>8 f'16 |
  <c e a>16 g'16 4. g,4 e8. e'16 |
  <a, d g>16 f'16 4. e,4 d8 d'16 e |
  <f, d' f>8 bes16 c <bes d>8 c16 d <g, c e>8 c16 d <c e>8 f16 g |
  <a, d f a>4. c8 <c c'>4 <bes g' bes> |
  <a cis e a>8 <a cis e> e4 <a, a'>16 cis <cis e g>8 <g g'>16 <a cis> <f f'>8 |
  <e g c e>8 <g c>

  r4 <g' a cis e>4. \ottava 1 d''16 e |
  f8 [e16 f8.] c'16 [8.] bes16 [8.] f16 g16~ |
  8 [a16 g8.] f16 a4. r16 d,16 e |
  f8 [e16 f8.] a16 [8.] bes16 [d,8] 16 f e16~ |
  8 [d16 e8.] g8 <d bes'>8. a'16 <cis, a'>16 d e f16~ |
  8 [e16 f8.] c'16 [8.] bes16 [8] f8 16 |
  g8 [a16 g8.] f16 a4. r16 d,16 e |
  f8 [e16 f8.] a16 [8.] bes16 [d,8] 16 f e16~ |
  8 a,16 e d c \ottava 0 a,8 <cis e a>4 <bes' bes'>8 <a d a'>16 <a e' a>16 |
  <d f>8 [<c e>16 <d f>8.] <a' c>16 [8.] <g bes>16 [8.] <d f>16 <e g>16~ |
  8 [<f a>16 <e g>8.] <d f>16 [<f a>8.] r8 r8 d16 e |
  <a, d f>8 [e'16 f8.] a16 [16] <bes, d f>8 [bes'16 d,8] <f, d'>16 <a f'> <g e'>16~ |
  8 <f d'>16 16 <g e'>8 <e' g> <g bes>8. <e a>16 16 d e <d f>16~ |
  8 [<c e>16 <d f>8.] <a' c>16 [8.] <g bes>16 [8.] <d f>16 16 |
  <e g>8 [<f a>16 <e g>8.] <d f>16 <f a>8. r8 r8 d16 e |
  <a, d f>8 [e'16 <a, d f>8.] <d f a>16 16 <bes d f>8 [bes'16 <bes, d>8] 16 f' <g, e'>16~ |
  4 r16 e,16 g c <g a e'>4 <bes' bes'>8 <a a'>16 16 |
  <d f>8 [<e, e'>16 <f f'>8] <g g'>8. <a c e a>4 <a, c e> |
  <d f bes d>8 [<c c'>16 <d d'>8] <e e'>8. <f c' f>4 <a, c f>4 |
  <bes f' bes>8 [<a a'>16 <bes bes'>8] <c c'>8. <d f bes d>8 <e e'> <f f'> <g g'> |
  <a d e a>8 [<bes bes'>16 <a a'>8] <g g'>8. <a d a'>4 <a cis e> |
  <d, f d' f>8 [<e e'>16 <f f'>8] <g g'>8. <a c e a>4 <a, c e>4 |
  <d f bes d>8 [<c c'>16 <d d'>8] <e e'>8. <f c' f>4 <a, c f>4 |
  <bes f' bes>8 [<a a'>16 <bes bes'>8] <c c'>8. <d f bes d>8 <e e'> <f f'> <g g'> |
  <a d e a>2 <c, e g a>2 |
  \clef bass \relative c' <f, a d>1 \fermata |
}

left = \relative c' {
  \time 4/4
  <d a'>2 \p c8 e a4 | <bes, f'>2 a8 c f4 |
  <g, d' f>2 <bes f'>2 | <a g'>2 <a b g'>8 e' <cis f> g' |

  <d a'>2 c8 e a4 | <bes, f'>2 \cresc a8 c f4 |
  <g, d' f>2 <bes f'>2 | <a g'>8 d e g <a, g'>2 |

  \time 2/4
  r4 \mp a16 r8. |
  \time 4/4 \repeat volta 2 {
    d8 f a4 c,8 e a4 | bes,8 d f4 a,8 c16 f8 8. |
    \clef bass
    <g, f'>8 bes d4 f,8 a c4 | g8 bes d g a, cis e4 |
    d,8 a' f'4 c,8 a' e'4 | bes,8 f' d'4 a,8 f' c'4 |
    f,,8 d' bes'4 f,8 c' a'4 | \once \stemDown <g, g'>4 <a a'>4 d8 a' d4 |
    bes,8 f' a d r8 f,8 a4 | a,8 f' a c r8 f,8 a4 |
    g,8 d' f16 a8. a,16 e' g a r8 e8 | d8 a' d a <d f>4 c, |
    bes8 f' a d r8 f,8 a4 | a,8 f' a c r8 f,8 a4 |
    g,4 r16 g'8. <a, g'>4 r16 a'8. | bes,8 \cresc f' d'4 <bes,, bes'> <f'' bes d> |
    <a,, a'>4 <e'' g d'> <g d'>8 e <a d> e | <a cis>8 <e g cis>4 <a,, a'>4 a'8 a'16 e

    a,8 \ff |
    <d, d'>4 <f' a d> g,8 8 <d' bes'>4 | c8 8 <g' c>4 f,16 c' f8 <e, e'>4 |
    <d d'>4 <f' a d> g,8 8 <d' bes'>4 |
    c8 8 <g' c>4. <a d e>8. <cis, a'>8 a16 |
    <d, d'>4 <f' a d>4 bes,8 8 <f' d'>4 |
    c8 8 <g' c>4 f,16 c' f8 <e, e'>4 |
    <d d'>4 <f' a d> g,8 8 <d' bes'>4 |
    \alternative {
      \volta 1 {
        <c, c'>8 \decresc 8. c'16 g' c <cis, a'>4 r4 | \clef treble \relative c' <d a'>2 \mp c'8 e a4 |
        <bes, f'>2 a8 c f4 | <g, d' f>2 <bes f'>2 |
        \ottava -1 <a g'>8 d e g a, e' r8 a,, \ottava 0 |
      }
    }
  }
  \clef bass \relative c' <c,, c'>8 8. c16 g' c <cis, a'>4 r4 |

  <d, d'>8 4 d'8 c8 8 <g' c>4 | <bes, bes'>4 <bes, bes'>8 <a a'>4 \tuplet 3/2 { f''16 a c } r4 |
  <bes d f>4 <bes, bes'>8 <a a'>4 a8 \noBeam e' a |
  <d, a'>8 d g,16 a c d d,8 a' d4 |
  <bes, bes'>8 8 r4 <bes' g' bes>8 8 r4 |
  <bes, bes'>8 8 r8 bes'8 bes' bes, f'16 <bes c>8. |
  <f, c' f>8 8 r4 <f c' f>8 8 r4 |
  <f c' f>8 8 r8 c''8 f, <g c> f16 <a c>8. |
  <bes,, bes'>8 8 r4 <bes' f' bes>8 8 r4 |
  <bes, bes'>8 8 r8 bes'8 bes' bes, f'16 <bes c>8. |
  <f, c' f>8 8 r4 <f c' f>8 8 r4 |
  <f c' f>8 8 r8 c''8 f, <g c> f16 <a c>8. |
  <c, g'>8 8 c' g r8 <c, g' c>8. 8. |
  <d a'>8 8 a' f r8 <d a'>8. 8. |
  <bes f'>8 8 r16 f'16 <bes d>8 <c, g'>8 8 r16 g'16 <c e>8 |
  <bes, f'>8 8 r16 f'16 <bes d>8 <bes, f'>8 8 r16 f'16 <bes d>8 |
  <a, g'>8 8 r16 a16 e' g r8 <a,, a'>8. \noBeam 8. |
  <a a'>8 8

  r8 a'16 e a,2
  \clef treble \relative c' d8 [f'''16 a8] f16 [a8] g, [f'16 bes8] f16 bes8 |
  c,8 [e16 c'8] e,16 [bes'8] <f a> [c'] <e, g>4 |
  d8 [f16 a8] f16 [a8] g,8 [f'16 bes8] f16 bes8 |
  c,8 [e16 c'8] e,16 [c'8] a d a cis |
  d,8 [f16 a8] f16 [a8] g, [f'16 bes8] f16 bes8 |
  c,8 [e16 c'8] e,16 [bes'8] <f a> [c'] <e, g>4 |
  d8 [f16 a8] f16 [a8] g, [f'16 bes8] f16 bes8 |
  \clef bass \relative c' <c e>4. r16 c,,16 <a g'>4 a,16 e' a8 |
  d,8 8 <d' f> e16 f g,8 8 <f' a> d |
  c8 8 <g' c>4 f,16 c' f8 e,16 c' e8 |
  d,8 8 <d' f>16 e f8 g,8 8 <f' a>8. g16 |
  c,8 8 <g' c> c, r8 <a e' a>8. <cis, cis'>8 a'16 |
  d,8 8 d' c16 a bes8 8 <f' a> bes, |
  c8 8 <g' c>4 f,16 c' f8 e,16 c' e8 |
  d,8 8 <d' f> e16 f g,8 8 <f' bes>4 |
  <c, c'>8 c16 g' c4 cis,16 a' cis8 a16 cis e8 |
  <d, d'>8 d16 a' d f a8 <c,, c'>8 4 16 g' |
  <bes, bes'>8 8. f'16 c bes <a a'>8 4 f'8 |
  <g, g'>8 8. d''16 g bes <bes, f'>8 8 <f' bes d>4 |
  <a, a'>8 8 d16 e a8 b,,16 g' b8 cis,16 a' cis8 |
  <d, d'>8 d16 a' d f a8 <c,, c'>8 4 g'16 c |
  <bes, bes'>8 8. f'16 c bes <a a'>8 4 f'8 |
  <g, g'>8. g'16 <d' g>8 g,16 a <bes f'>8. bes16 <f' bes>8 bes, |
  a8. 16 <e' a>8 e a,8 16 e a,8 e' |
  d16 d'2. r8. |
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
}

\score {
  \unfoldRepeats {
    \new PianoStaff <<
      \set PianoStaff.connectArpeggios = ##t
      \new Staff = "right" \with { midiInstrument = "acoustic grand" }
      { \global \right \bar "|."}
      \new Staff = "left" \with { midiInstrument = "acoustic grand" }
      { \global \left }
    >>
  }
  \midi {
    \tempo 4=75
  }
}
