---
title: "Time Travel Is Real (But Not How Movies Show It)"
date: 2026-02-01 09:00:00 +08:00
categories: physics
tags: ["relativity", "time dilation", "gps", "speed", "gravity", "special relativity", "general relativity"]
image_name: time-travel-is-real-but-not-how-movies-show-it.png
image_description: "Two clocks, one on a satellite and one on Earth, with curved spacetime lines between them."
comments: true
mathjax: true
---

![Relativity makes time tick at different rates.](/assets/images/time-travel-is-real-but-not-how-movies-show-it.png)
*Relativity makes time tick at different rates.*

<!-- Image Description: Two clocks, one on a satellite and one on Earth, with curved spacetime lines between them. -->

## Time runs at different speeds

*By Peter Teoh, Science Writer*

**Challenge to the reader:** A GPS satellite orbits Earth at $v \approx 3{,}900\ \mathrm{m/s}$ at an altitude of about $20{,}200\ \mathrm{km}$. Using the formulas below, show that (a) special relativity makes its onboard clock run *slower* by roughly $7$ microseconds per day, and (b) general relativity makes it run *faster* by roughly $45$ microseconds per day — so the *net* drift is about $38$ microseconds per day. Then compute how far your phone's position would be off each day if engineers forgot to correct for it.

Einstein showed that time is flexible. Move fast or sit deep in gravity, and your clock ticks more slowly than one far away. This is not a metaphor, and it is not science fiction: it is a measurable effect that engineers must correct for every single day to keep the GPS in your pocket working. In a very precise sense, **time travel is real — but only into the future, and only in one direction.**

---

## 1. The core idea: time is part of a four-dimensional fabric

Before Einstein, physicists treated time as a universal backdrop — a clock ticking identically for everyone, everywhere. Relativity replaces that picture with **spacetime**: a four-dimensional fabric in which time is one coordinate, on the same footing as the three spatial coordinates.

The central object is the **spacetime interval**, the "distance" between two events. In flat (special-relativistic) spacetime it is written as

$$
\Delta s^2 = -c^2\,\Delta t^2 + \Delta x^2 + \Delta y^2 + \Delta z^2,
$$

where $c \approx 3.00\times 10^8\ \mathrm{m/s}$ is the speed of light. The minus sign in front of the time term is the entire secret: it is what makes time behave differently from space. A clock moving along a worldline measures its own **proper time** $\Delta \tau$, which is related to the interval by

$$
\Delta \tau = \frac{\sqrt{-\Delta s^2}}{c}.
$$

Different observers following different paths through spacetime accumulate *different* amounts of proper time. That is why two twins can age at different rates — not because their clocks are faulty, but because their paths through spacetime have different lengths.

---

## 2. Special relativity: motion slows time

The first source of time dilation is **relative motion**. If an observer at rest measures a time interval $\Delta t$, and a clock moving at speed $v$ measures the same interval as its proper time $\Delta \tau$, the two are related by

$$
\Delta t = \gamma\,\Delta \tau,
\qquad
\gamma = \frac{1}{\sqrt{1 - v^2/c^2}}.
$$

The quantity $\gamma$ (gamma) is the **Lorentz factor**. At everyday speeds $v \ll c$, $\gamma$ is essentially $1$ and the effect is invisible. As $v$ approaches $c$, $\gamma$ grows without bound and the moving clock slows dramatically.

The full relationship between two inertial frames is given by the **Lorentz transformation**:

$$
t' = \gamma\left(t - \frac{v x}{c^2}\right),
\qquad
x' = \gamma(x - v t).
$$

Two important consequences follow immediately:

1. **Length contraction** — a moving object is measured to be shorter along its direction of motion:

$$
L = \frac{L_0}{\gamma}.
$$

2. **Relativity of simultaneity** — events that are simultaneous in one frame are *not* simultaneous in another. The term $v x / c^2$ in the time transformation encodes this: "now" depends on how you are moving.

**Challenge (mid-post):** Compute $\gamma$ for a passenger jet at $v = 900\ \mathrm{km/h}$ ($250\ \mathrm{m/s}$). How many seconds does a jet traveler "gain" relative to someone on the ground over a 10-hour flight? (Hint: the answer is measured in nanoseconds — about a dozen billionths of a second.)

---

## 3. General relativity: gravity slows time

Motion is not the only thing that dilates time. Einstein's general theory of relativity (1915) shows that **gravity itself slows clocks**. The deeper you sit in a gravitational well, the slower your clock runs compared to a clock far away.

In a weak gravitational field (which covers the Earth, the Sun, and most ordinary situations), the effect is beautifully simple. For a clock at height $h$ above another clock on Earth's surface,

$$
\frac{\Delta t_h - \Delta t_0}{\Delta t_0} \approx \frac{g h}{c^2},
$$

where $g \approx 9.8\ \mathrm{m/s^2}$ is the surface gravity. More generally, in terms of the gravitational potential $\Phi = -GM/r$,

$$
\frac{\Delta t_1}{\Delta t_2} \approx 1 + \frac{\Phi_1 - \Phi_2}{c^2}.
$$

For a spherically symmetric body such as a star or a black hole, the exact result (from the Schwarzschild metric) is

$$
\Delta t_{\infty} = \frac{\Delta \tau}{\sqrt{1 - r_s/r}},
\qquad
r_s = \frac{2GM}{c^2},
$$

where $r_s$ is the Schwarzschild radius. As $r \to r_s$, the denominator approaches zero and time (as seen from far away) freezes — a preview of the black-hole article in this series.

**A concrete, measured fact.** In 1959, Robert Pound and Glen Rebka placed a gamma-ray source and detector $22.5\ \mathrm{m}$ apart vertically in a tower at Harvard and measured the gravitational shift in the radiation's frequency. They found

$$
\frac{\Delta f}{f} = \frac{g h}{c^2} \approx 2.5\times 10^{-15},
$$

exactly as Einstein predicted — a fractional shift of less than one part in $10^{14}$, yet detectable. Gravity really does slow time.

---

## 4. The GPS: relativity as everyday technology

The cleanest demonstration that time dilation is real — and that we depend on it — is the **Global Positioning System**. Each GPS satellite carries an atomic clock. The satellite is in two simultaneous situations that pull its clock in *opposite* directions:

- **It moves fast** ($v \approx 3{,}900\ \mathrm{m/s}$), so special relativity makes its clock run *slower*.
- **It sits high up** ($h \approx 20{,}200\ \mathrm{km}$), in a weaker gravitational field, so general relativity makes its clock run *faster*.

The two effects are:

| Effect | Source | Sign | Magnitude (per day) |
|---|---|---|---|
| Special relativity | Orbital motion $v \approx 3.9\ \mathrm{km/s}$ | clock slows | $-7.2\ \mu\mathrm{s}$ |
| General relativity | Higher in the gravity well | clock speeds up | $+45.9\ \mu\mathrm{s}$ |
| **Net** | — | **speeds up** | $\mathbf{+38.7\ \mu s}$ |

The special-relativistic term comes from expanding the Lorentz factor for $v \ll c$:

$$
\frac{\Delta t - \Delta \tau}{\Delta t} \approx \frac{v^2}{2c^2} \approx 8.4\times 10^{-11}.
$$

The general-relativistic term comes from the potential difference between the satellite's orbit and Earth's surface:

$$
\frac{\Delta \Phi}{c^2} = \frac{GM}{c^2}\left(\frac{1}{r_{\text{Earth}}} - \frac{1}{r_{\text{orbit}}}\right) \approx 5.3\times 10^{-10}.
$$

The net result is that a GPS clock runs fast by about **38 microseconds per day**. That sounds tiny, but light travels about $11\ \mathrm{km}$ in 38 microseconds — so if engineers did *not* correct for relativity, your phone's position would drift by roughly 11 kilometers every single day. Relativity is not an academic footnote; it is a load-bearing piece of modern infrastructure.

---

## 5. The muon: time dilation measured in the sky

Motion-driven time dilation is not just an atomic-clock curiosity. It is measured every second in Earth's upper atmosphere.

Cosmic rays (mostly protons) slam into the atmosphere and produce **muons** — heavier, unstable cousins of the electron. A muon at rest decays with a mean lifetime of

$$
\tau_0 = 2.2\ \mu\mathrm{s}.
$$

Traveling at even the speed of light, a muon should only manage

$$
c\,\tau_0 \approx 660\ \mathrm{m}
$$

before decaying. Yet muons produced at altitudes of $10$–$15\ \mathrm{km}$ are routinely detected at sea level. How?

The muons are moving at close to the speed of light, so their clocks run slow. A muon with speed $v = 0.99\,c$ has

$$
\gamma = \frac{1}{\sqrt{1 - (0.99)^2}} \approx 7.1,
$$

so its lifetime, as measured by a ground-based clock, is stretched to

$$
\tau = \gamma \tau_0 \approx 15.6\ \mu\mathrm{s},
$$

letting it travel roughly $4.6\ \mathrm{km}$ before decaying. The muon "sees" the atmosphere contracted by the same factor $\gamma$, which is the length-contraction view of the exact same physics.

This was confirmed quantitatively in 1941 by Bruno Rossi and David Hall, and again with exquisite precision in 1977 at CERN's muon storage ring, where muons were kept circulating at $\gamma \approx 29.3$ and their lifetimes measured to lengthen by exactly that factor.

**Challenge (mid-post):** If a muon travels at $0.995\,c$, what is its Lorentz factor, and how far does it travel (in Earth's frame) during one mean lifetime? Compare your answer to the $660\ \mathrm{m}$ it would travel without time dilation.

---

## 6. The twin paradox: why you can travel into the future

The most famous "time travel" scenario is the **twin paradox**. One twin stays on Earth; the other boards a rocket, travels at high speed to a distant star, and returns. When they reunite, the traveling twin has aged less.

The resolution lies in the spacetime interval of Section 1. The stay-at-home twin follows a nearly straight worldline through spacetime; the traveling twin follows a longer path through *space* but — because of the minus sign in the interval — a *shorter* total interval of proper time. The asymmetry (why the traveler is younger, not the stay-at-home twin) comes from the fact that the traveler must accelerate to turn around, breaking the symmetry between the two reference frames.

Quantitatively, if the traveler moves at constant speed $v$ for a round trip of total Earth-frame duration $\Delta t$, the traveler's proper time is

$$
\Delta \tau = \frac{\Delta t}{\gamma}.
$$

**Example.** A round trip at $v = 0.999\,c$ has $\gamma \approx 22.4$. A journey that takes $22.4$ years on Earth would age the astronaut by only $1$ year. This is *forward* time travel — a genuine, physically permitted way to "jump" into the future. What general relativity forbids, as far as we know, is jumping *backward* into the past.

---

## 7. Hafele–Keating: flying clocks around the world

The most direct human-scale demonstration of both forms of time dilation came in 1971. Physicists Joseph Hafele and Richard Keating flew four cesium-beam atomic clocks around the world on commercial airliners — once eastward and once westward — and compared them against a reference clock at the U.S. Naval Observatory.

Because Earth rotates, eastward and westward flights have *different* speeds in the inertial frame of the fixed stars, so the special-relativistic correction has opposite signs in the two directions. The results, in nanoseconds:

| Direction | Predicted | Measured |
|---|---|---|
| Eastward | $-40 \pm 23\ \mathrm{ns}$ | $-59 \pm 10\ \mathrm{ns}$ |
| Westward | $+275 \pm 21\ \mathrm{ns}$ | $+273 \pm 7\ \mathrm{ns}$ |

The agreement — including the sign flip between eastward and westward travel — confirmed the *sum* of special- and general-relativistic time dilation to within experimental error. This is time travel, practiced at the scale of nanoseconds by ordinary airliners.

---

## 8. Deeper significance: time travel is a one-way street

The laws of physics place no barrier on *forward* time travel. Move fast enough, or linger near a strong enough source of gravity, and you will genuinely arrive in the future having aged less than the people you left behind. In principle an astronaut could leap centuries into the future.

Backward time travel is a different matter entirely. It would require closed timelike curves — paths through spacetime that loop back and meet themselves. General relativity does not obviously forbid such curves (the Gödel metric and some rotating black-hole geometries permit them), but they lead to causal paradoxes (the famous "grandfather paradox"), and most physicists expect that some principle — chronology protection, quantum effects, or the second law of thermodynamics — rules them out.

There is a beautiful asymmetry hidden in all of this: **time dilation never makes a clock run *backward***. The factor $\gamma$ and the gravitational factor $1/\sqrt{1-r_s/r}$ are always greater than or equal to $1$. Motion and gravity can stretch time, but they cannot reverse it.

**Final challenge:** An astronaut travels at $v = 0.9\,c$ for 10 years (as measured on Earth) and returns. (a) How much has the astronaut aged? (b) At what speed would the astronaut need to travel so that 10 Earth-years pass while they age only 1 year? (c) Use the GPS numbers from Section 4 to explain why an astronaut orbiting Earth would *also* experience gravitational time dilation, and estimate its sign and rough size relative to the speed effect.

---

## References

- **Einstein, A.** (1905). "On the Electrodynamics of Moving Bodies," *Annalen der Physik* 17: 891. [Special relativity](https://en.wikipedia.org/wiki/Special_relativity)
- **Einstein, A.** (1915). "The Field Equations of Gravitation." [General relativity](https://en.wikipedia.org/wiki/General_relativity)
- **Hafele, J. C. & Keating, R. E.** (1972). "Around-the-World Atomic Clocks," *Science* 177: 166–170. [Hafele–Keating experiment](https://en.wikipedia.org/wiki/Hafele%E2%80%93Keating_experiment)
- **Pound, R. V. & Rebka, G. A.** (1960). *Physical Review Letters* 4: 337. [Pound–Rebka experiment](https://en.wikipedia.org/wiki/Pound%E2%80%93Rebka_experiment)
- **Rossi, B. & Hall, D.** (1941). "Variation of the Rate of Decay of Mesotrons with Momentum," *Physical Review* 59: 223. [Muon lifetime](https://en.wikipedia.org/wiki/Muon)
- **Bailey, J. et al.** (1977). "Measurements of relativistic time dilatation for positive and negative muons in a circular orbit," *Nature* 268: 301.
- **Ashby, N.** (2003). "Relativity in the Global Positioning System," *Living Reviews in Relativity* 6: 1. [GPS and relativity](https://en.wikipedia.org/wiki/Global_Positioning_System)
- **Twin paradox.** [Wikipedia](https://en.wikipedia.org/wiki/Twin_paradox)
- **Time dilation.** [Wikipedia](https://en.wikipedia.org/wiki/Time_dilation)
