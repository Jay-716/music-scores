\version "2.24.2"

\header {
  title = "Tranquil Moments"
  subtitle = "ATRI -My Dear Moments-"
  composer = "松本文纪"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key f \major
  \tempo 4=70
  \time 4/4
  \partial 4
}

% For multiple notes slash grace.
% See https://stackoverflow.com/questions/18873776/lilypond-acciaccaturas-and-slashed-stems-not-showing-when-beamed-together
slash = {
  #(remove-grace-property 'Voice 'Stem 'direction)
  \once \override Stem.stencil =
  #(lambda (grob)
    (let* ((x-parent (ly:grob-parent grob X))
           (is-rest? (ly:grob? (ly:grob-object x-parent 'rest))))
     (if is-rest?
      empty-stencil
      (let* ((dir (ly:grob-property grob 'direction))
             (stem (ly:stem::print grob))
             (stem-y (ly:grob-extent grob grob Y))
             (stem-length (- (cdr stem-y) (car stem-y))))
       (ly:stencil-add
        stem
        (grob-interpret-markup grob
         (markup #:translate (cons -1 (* dir (1- (* -1.5 (/ stem-length 2))))) 
          #:draw-line (cons 2 (* dir 2)))) 
      )))))
}


right = \relative c'' {
  \set Score.rehearsalMarkFormatter = #format-mark-box-alphabet

  s4 \mark \default
  g'4\arpeggio \pp ( e'8 \< e \! e f16 e16~8 c | \tuplet 3/2 { g4 a8 } ~2) a16 ( bes c8 |
  c f,16 <d f>16~16 d f8~4) <c f>16 ( g' a8 | <bes, a'>8 f'16 f16~16 d16 g8 c,2) |
  <<
    {
      <c, a'>4 \mp ( <g'' e'>8 _[8] 8 _[<a f'>16 <g e'>16] ~8 _[c] | g8 c16 a16~4 ) r4
      <c, a'>16_\markup{\tiny \italic "a tempo"} (bes' c8 | c _[f,16 <d f>16] ~16 _[d  f8~] \stemDown 4)
    }
  \\
    {
      s1 |
      e8. ( [e16] f16 [a, g^\markup{\tiny \italic "rit."} a] f2 )
    }
  >>
  <c' f>16 \(g'16 a8 | <bes, a'>8 bes'16 f16~16 d16 g8 (8)\) c,8 (d e |
  \mark \default <f, bes f'>4. \arpeggio)
  (\stemUp f'8 <c e>8 [f16 g16~ ]8 [e] | <bes f'>16 e d8~4) r8
  c8 ( d e | \stemDown <f, bes f'>4. \arpeggio \stemUp f'8 <c e>8 [f16 g16~ ]8 [e] |
  \stemDown <d a'>4. \tuplet 3/2 { g16 a bes } <e, c'>8 <d bes'> <c a'> e ) |
  <f, bes d f>4. \arpeggio (f'8 <c e> f16 g16~8 e8 | <bes f'>16 e16 d8~4) r4. d16 ( e |
  <f, bes d f>2 \arpeggio ~8 bes bes' a | <g, c f g>1 \arpeggio | <g c e>1 \arpeggio ) |

  \mark \default
  r4 \mf <<
    {
      c'8 ( e, c' bes16 a16~8 f8 | g8 f16 g16~8 a bes4 \arpeggio a8 e |
      f2 c4 b | f'8 \arpeggio e e f g4 )
    } \\
    {
      <c, g'>4 <c f> c | <c e>4 c <cis e g> \arpeggio <a cis>4 |
      <a d>4 a g g | <f bes d>4 \arpeggio c' <c e>
    }
  >>
  <<
    { a'8 ( <e, e'> | \stemDown <f a c f>4 <c' c'>8 8 <c f bes c> <bes bes'>16 <a a'>16~8 <f f'>8 |
      <g c e g>8 <f f'>16 <g c e g>16~8 <a a'>8 <bes cis e bes'>4 <a a'>8 <e e'>8 |
      <f a d f>4 <f a> <g c> <g b> | <f bes d f>8 \arpeggio <e e'> <e e'> <f f'> <g c e g>4 ) }
     \\ { c,4 }
  >>
  <a' a'>8 ( <e e'> | <f a c f>4 <c' c'>8 8 <c f bes c> <bes bes'>16 <a  a'>16~8 <f f'>8 |
  <g c e g>8 <f f'>16 <g c e g>16~8 <a a'>8 <bis c e bes'>8 <a a'> \tuplet 3/2 { <c cis'>8-. [<a a'>8-. <g g'>8-.] } |
  <f a d f>4 \stemUp f16 g a8 c g d4) |
  \stemNeutral <f bes f'>8 ( e'16 f16~8 <c c'>8~2 | <f, f'>8 e'16 f16~8 <c c'>8~4 s4 |
  <e g c e>2 \arpeggio \grace { \stemDown \slash a8 [bes8]} \stemNeutral c8 \mp bes a g |
  <a, c f>1 \arpeggio ) |
  <c, f a>1 \arpeggio | <c ees a>2 \arpeggio <c e g>2 \arpeggio |
  <a c f>1~ \arpeggio | 1 \fermata
}

left = \relative c' {
  s4 <e f c'>1\arpeggio | \tuplet 3/2 { c8 ( <bes' c> f'8 } ~2) r4 |
  \override Beam.grow-direction = #RIGHT
  \featherDurations 1/2
  { bes,,16 [ ( d_\markup { \tiny \italic rubato } e f~ ] }
  \override Beam.grow-direction = #'() { 2 })

  <a, a'>4 | g16 ( d' f bes16~4 ) \clef "bass" \relative c c16 (_[ g, c
  \change Staff = "right" d16 ] bes'_[ e,8.]) \change Staff = "left" |
  f,,16 _(c' g' a16~2.) | <c, a'>2.
  <c g'>4 | <bes f' bes c>4 <d' f>4-- <c e>4-- <bes d>4-- |
  << {s4 \stemUp a8^--[ bes^--] c2--} \\ {<g, d' g>2 <c g'>4 c,4} >>
  \stemDown bes'8 (f' d '\change Staff = "right" f8) \change Staff = "left"
  a,,8 (g' <a c f>4) | << {s4 <d f>8-- e8-- d2--} \\ {g,,8 ([f'] bes4) r4 a,4} >> |

  \stemDown bes8 (f' d '\change Staff = "right" f8) \change Staff = "left"
  a,,8 (g' <a c f>4) | g,8 (f' <bes c e> g) <d a' d>4 <c g' e'> |
  <bes bes'>8 (f' <bes d>4) <a, g'>8 (e' <g c>4) |
  << {s4 f'8-- e8-- d2--} \\ {g,,8 ([f'] <bes c>4) r4 g,8 a} >> |
  bes8 (f' bes c d4) bes, |
  \stemUp c,8 ( g' c f g c \change Staff = "right" \stemDown d f ) \change Staff = "left" |
  c,,8 (g' c d) <e g c e>4_\fermata ^\< c,4 \! |
  <f a'>8 _(c' <a' c f>4) <bes, bes'>8 (f' <bes d>4) |
  <c, c'>8 (g' <c e>4) <cis, cis'>8 (a' <cis e g>4) |
  <d, d'>8 (a' <d f> f,) <g, b'>8 (d' <g b>4) |
  <bes, bes'>8 (f' <bes c> f) <c c'>8 ([g' c bes]) |
  <f, g'>8 (c' <f a c>4) <bes, bes'>8 (f' <bes d f>4) |
  c,8 (g' <c e> g) <cis, cis'>4 <cis' e g>8 (<a, a'>) |
  <d d'>8 (a' d a) <g, b'> (d' <g b d>4) |
  <bes, bes'>8 (f' <bes c> f) <c, c'> (g' <e' g c> c) |
  \stemNeutral <f,, f'>8. f''16 <a c f>8 f16 f, <bes, bes'>8. bes'16 <f' bes>8 <f bes c> |
  <c, c'>8. c'16 <g' c e>8 c,16 c,16 <cis cis'>4 \once \stemDown \tuplet 3/2 { <a'' cis e>8-. <cis, cis'>-. <a, a'>-. } |
  <d d'>8. (d'16 <f a>4) <g, g'>8 (d' g4) |
  <bes, bes'>8 (f' <bes c>4) e8 d a f |
  c8 _( g' c \clef "treble" f8 g [\change Staff = "right" c8] <d f d'>4 \arpeggio ) \change Staff = "left" |
  \clef "bass" <c, g e>1 |
  f,,8 (c' e f g a \change Staff = "right" c e) \change Staff = "left" |
  <c, a'>1 \arpeggio | <c ees a>2 \arpeggio <c e g>2 \arpeggio |
  <f, c' f>1~ \arpeggio | 1 _\fermata
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
    \tempo 4=70
  }
}
