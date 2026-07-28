# Ultraviolett

### Overtone Multiplication Study for Four Saxophone Spectra

*Ultraviolett* is an autonomous Max/MSP study in resonance, spectral inheritance,
and the changing density of a virtual saxophone ensemble. It does not reproduce
recordings. Instead, it resynthesizes reduced spectral models of saxophone
multiphonics as banks of sine oscillators.

The title refers to a field that is physically present but inaccessible to
ordinary human vision. Visible light occupies only a narrow region of the
electromagnetic spectrum; ultraviolet and infrared radiation continue beyond
its boundaries. Arctic reindeer extend their visual sensitivity into the
ultraviolet. UV-absorbing lichens may consequently appear as dark figures
against a bright, UV-reflecting field of snow. What is absent from one sensory
world can remain concrete and orienting within another.

The same proposition is transferred here from vision to listening. A saxophone
multiphonic may initially be perceived as two unstable pitches or as a single
complex colour. Spectral analysis reveals a larger population of components:
strong partials, quiet resonances, beating proximities, and frequencies that
hover near the threshold of attention. In *Ultraviolett*, these normally
subordinate tones become the material of the work. One instrument illuminates
what was latent in another.

## Program note

The system begins with a single spectral body. From several partials of that
body it chooses a small, partly random set of anchors and searches the catalogue
for another multiphonic that contains corresponding frequencies. The aim is
not resemblance. Two spectra need only share a narrow bridge; their remaining
partials should occupy different regions and introduce a new colour.

Each transition therefore combines continuity and displacement. Shared
frequencies persist as lines of resonance, while the surrounding spectrum
dissolves and reforms. Further saxophone layers can enter until four
independent multiphonics coexist. The texture then thins again. This probabilistic
movement between one and four layers produces an ambient morphology without a
fixed dramatic trajectory: concentration, accumulation, saturation, erosion.

Unlike the developmental spectral dramaturgies associated with Gérard Grisey
or Tristan Murail, the patch does not treat spectral data as the premise of a
directed large-scale form. It is closer to a sustained act of comparison: an
environment in which related sonorities can be observed for as long as their
differences remain audible. Its historical horizon includes Alvin Lucier's
attention to resonance and acoustic disclosure, the experimental permission
of John Cage, Brian Eno's conception of ambient music, and the reduced digital
fields of Taylor Deupree and Richard Chartier. These references describe a
listening attitude rather than a claim of stylistic equivalence.

The synthesis is intentionally a model, not an imitation of instrumental
performance. Four live saxophonists would produce breath, nonlinear coupling,
microtonal instability, spatial radiation, and mutual acoustic influence that
a sine bank cannot contain. The patch is a laboratory instrument: a way to
place the internal proportions of multiphonics under a magnifying glass.

## Visual field

Presentation Mode displays spectral events as a horizontal memory moving from
left to right. Frequency is vertical: low components remain below and high
components rise. Each saxophone family has a quiet colour:

- soprano — muted pink
- alto — warm pale yellow
- tenor — pale green
- baritone — cool blue

The coloured traces overlap rather than replace one another. Shared partials
produce brighter composite regions; contrasting partials fill previously empty
frequency bands. The display is not a measurement instrument. It is a visual
score of spectral presence—a microscope for slowly changing interference.

## Source material and attribution

The multiphonic catalogue is derived from spectral analysis of the recorded
examples accompanying Marcus Weiss and Giorgio Netti's *The Techniques of
Saxophone Playing / Die Spieltechnik des Saxophons* (Bärenreiter, BVK 2114,
ISBN 978-3-7618-2114-5).

Weiss and Netti are the authors of the source handbook and its systematic
multiphonic material. This project makes no claim to authorship of that
catalogue. The original audio recordings are not distributed here. The
repository contains only reduced analytical data—frequency and normalized
relative amplitude for each retained partial—and an independent resynthesis
system.

## How it works

Each catalogue entry contains only:

```json
{
  "id": 1,
  "partials": [
    { "frequency": 261.51, "amplitude": 0.505 },
    { "frequency": 511.37, "amplitude": 1.0 },
    { "frequency": 772.96, "amplitude": 0.049 }
  ]
}
```

Up to twelve partials are assigned to a fixed `mc.cycle~` bank. Their internal
amplitude ratio remains constant while one common envelope creates a slow
crescendo, sustain, and diminuendo. Frequencies are changed only after the
layer reaches silence, preventing discontinuities and clicks.

The transition algorithm:

1. selects two to five anchor partials from the current spectrum;
2. biases their selection toward the chosen formant region;
3. finds candidates containing those anchors within a small pitch tolerance;
4. penalizes candidates whose remaining spectrum is too similar;
5. reconstitutes the next multiphonic after the current layer reaches silence.

The number of sounding layers moves probabilistically between one and four.
Local outcomes remain unpredictable, while the global density tends to
accumulate and disperse.

## Controls

- **RUN** — starts or stops the autonomous process.
- **DURATION** — sets the length of each spectral gesture.
- **FORMANT** — biases anchor selection toward a frequency region.
- **SHARED PARTIALS** — sets the number of inherited components (`2–5`).
- **LEVEL** — controls the final output level.

Start with **SHARED PARTIALS = 2**, a long duration, and a conservative level.
Turn on Max audio with the speaker icon in the upper-right corner.

## Requirements

- Max 8.5 or later
- no external packages
- stereo audio output

Open `Ultraviolett.maxpat`. The patch opens directly in Presentation Mode.

## Repository structure

```text
Ultraviolett.maxpat
simple_engine.js
spectral_display.js
data/
  soprano.json
  alto.json
  tenor.json
  baritone.json
```

## References

- Weiss, Marcus, and Giorgio Netti. *The Techniques of Saxophone Playing /
  Die Spieltechnik des Saxophons*. Kassel: Bärenreiter, 2010.
- Hogg, C. et al. “Arctic Reindeer Extend Their Visual Range into the
  Ultraviolet.” *Journal of Experimental Biology* 214 (2011): 2014–2019.
- Dominy, N. J., C. Hobaiter, and J. M. Harris. “Reindeer and the Quest for
  Scottish Enlichenment.” *i-Perception* 14.6 (2023).

## Author

Concept, software, spectral analysis, and text: **Dmitrii Shchukin**

© 2026 Dmitrii Shchukin. All rights reserved.
