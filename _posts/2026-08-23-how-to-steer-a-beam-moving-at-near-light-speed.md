---
title: "How to Steer a Beam Moving at Near Light Speed"
date: 2026-08-23 00:00:00 +08:00
categories: physics
tags: ["accelerator physics", "particle accelerators", "electromagnetism", "magnetism", "beam dynamics", "luminosity", "synchrotron radiation"]
comments: true
---

**Challenge to the reader:** The Large Hadron Collider bends 7 TeV (7000 GeV) protons around a bending radius of about 2804 m. Using the rigidity formula $p[\mathrm{GeV}/c]\simeq 0.3\,B[\mathrm{T}]\,\rho[\mathrm{m}]$, estimate the dipole magnetic field $B$ needed. You should land within a few percent of the real LHC value.

*By Peter Teoh, Science Writer*

Accelerator physics is the study of how to create, accelerate, guide, focus, diagnose, and safely dispose of beams of charged particles. Its central idea is simple: **electric fields change a particle’s energy, while magnetic fields primarily steer and focus its trajectory.** Modern machines combine these fields with vacuum, RF power, precision mechanics, feedback, cryogenics, and radiation protection. [home](https://www.home.cern/science/accelerators/how-accelerator-works)

## 1. Core kinematics and forces

A particle with charge $q$, rest mass $m$, velocity $\mathbf v$, and momentum $\mathbf p$ obeys the Lorentz force law:

$$
\mathbf F = \frac{d\mathbf p}{dt}
= q\left(\mathbf E+\mathbf v\times\mathbf B\right).
$$

The relativistic momentum and energy are

$$
\mathbf p=\gamma m\mathbf v,
\qquad
\gamma=\frac{1}{\sqrt{1-\beta^2}},
\qquad
\beta=\frac{v}{c},
$$

$$
E^2 = p^2c^2+m^2c^4,
\qquad
E = \gamma mc^2.
$$

For an ultra-relativistic beam, $\beta\simeq 1$, so

$$
E \simeq pc.
$$

This approximation is excellent for high-energy electrons, positrons, protons, and heavy ions once their kinetic energy is much larger than their rest energy.

The instantaneous power delivered by an electric field is

$$
\frac{dE}{dt}=q\,\mathbf E\cdot\mathbf v.
$$

A purely magnetic field performs no work because $\mathbf v\cdot(\mathbf v\times\mathbf B)=0$. It changes direction, not kinetic energy.

---

## 2. Main accelerator architectures

| Machine type | Principle | Typical role |
|---|---|---|
| Electrostatic accelerator | A static voltage gives one energy gain | Ion implantation, nuclear physics, injectors |
| Linear accelerator (linac) | RF cavities accelerate particles along a straight path | Medical linacs, injectors, XFELs, collider injectors |
| Cyclotron | Fixed magnetic field bends particles in a spiral while RF gaps accelerate them | Medical isotope production, proton therapy |
| Synchrotron | Ring magnets and RF are ramped or controlled as beam momentum changes | Storage rings, hadron colliders, synchrotron-light sources |
| Storage ring | Beam circulates for many turns at nearly constant energy | Colliders and photon sources |
| Recirculating linac | Multiple passes through the same linac using arcs | Energy-recovery linacs, some electron facilities |

In a synchrotron, a reference particle follows a closed design trajectory called the **reference orbit**. The coordinate along it is conventionally denoted $s$, while $x$ and $y$ describe horizontal and vertical offsets.

---

## 3. Beam generation and injection

An accelerator begins with a **source**:

- Electron guns use thermionic emission or photoemission.
- Ion sources use plasmas, electron-cyclotron resonance, or surface ionization.
- Positrons are often produced by directing a high-energy electron beam into a conversion target.

A source produces particles with finite spatial extent, angular spread, energy spread, and time structure. These nonidealities become central beam-quality parameters downstream.

For a nonrelativistic ion extracted through a voltage $V$,

$$
qV = \frac{1}{2}mv^2.
$$

More generally, the kinetic energy gain from an electrostatic potential difference is

$$
\Delta K=q\Delta V.
$$

For a singly charged particle, 1 volt corresponds to 1 eV of energy gain:

$$
1~\mathrm{eV}=e\times 1~\mathrm{V}.
$$

Injection systems use magnetic and electrostatic elements to match the source beam into the acceptance of a linac, ring, or transport line. Pulsed **kicker magnets** rapidly deflect a selected beam pulse onto or off the reference orbit; **septum magnets** provide a strong field separation between incoming and circulating beams.

---

## 4. Acceleration and RF systems

A static electric field cannot indefinitely accelerate a circulating beam because the beam would eventually encounter a decelerating field. RF systems solve this by oscillating at radio frequencies, with particles arriving at a phase that gives them a net energy gain. RF cavities are resonant metallic structures designed so their longitudinal electric field interacts efficiently with bunches. [home](https://www.home.cern/science/accelerators/how-accelerator-works)

For one cavity passage,

$$
\Delta E = qV_{\mathrm{RF}}\sin\phi,
$$

or equivalently $qV_{\mathrm{RF}}\cos\phi$, depending on the convention used to define RF phase. Here:

- $V_{\mathrm{RF}}$ is the effective cavity voltage.
- $\phi$ is the arrival phase relative to the RF wave.
- A chosen **synchronous particle** arrives at the synchronous phase $\phi_s$.

For a ring with $N_c$ effective cavities,

$$
\Delta E_{\text{turn}}
=
qV_{\text{tot}}\sin\phi_s-U_0,
$$

where $U_0$ is energy lost per turn, especially through synchrotron radiation for electron beams.

The RF frequency must be synchronized to the revolution frequency:

$$
f_{\mathrm{RF}} = h f_{\mathrm{rev}},
$$

where $h$ is an integer called the **harmonic number**. If the ring circumference is $C$,

$$
f_{\mathrm{rev}}=\frac{v}{C}\simeq\frac{c}{C}
$$

for ultra-relativistic particles.

### RF buckets and longitudinal stability

Particles arriving slightly early or late receive slightly different RF kicks. Under the right operating phase, this restores them toward a stable phase-energy orbit. The stable region in longitudinal phase space $(\phi,\Delta E)$ is called an **RF bucket**.

For small oscillations, particles execute **synchrotron oscillations**, analogous to pendulum motion. Their frequency depends on RF voltage, phase, energy, ring momentum compaction, and harmonic number.

A useful relation is

$$
\frac{\Delta f_{\mathrm{rev}}}{f_{\mathrm{rev}}}
=
-\eta\delta,
\qquad
\delta=\frac{\Delta p}{p_0},
$$

where

$$
\eta=\alpha_c-\frac{1}{\gamma^2}
$$

is the **slip factor**, and $\alpha_c$ is the momentum compaction factor. The energy at which $\eta=0$ is the **transition energy**.

---

## 5. Dipoles: bending the beam

A dipole magnet produces an approximately uniform transverse magnetic field. It bends the beam along an arc of radius $\rho$. From the magnetic Lorentz force,

$$
qvB=\frac{pv}{\rho},
$$

so

$$
p=qB\rho.
$$

This is one of the most useful equations in accelerator physics. In practical units,

$$
p[\mathrm{GeV}/c]
=
0.2998\,
q[e]\,
B[\mathrm T]\,
\rho[\mathrm m].
$$

For a particle with unit charge,

$$
p[\mathrm{GeV}/c]\simeq 0.3B[\mathrm T]\rho[\mathrm m].
$$

Thus, higher-momentum beams require either stronger magnets or a larger ring. This is why high-energy proton colliders are large and use high-field superconducting dipoles.

In a synchrotron, as particle momentum rises, the dipole field must increase approximately in proportion:

$$
B(t)\rho=\frac{p(t)}{q}.
$$

Dipoles also create dispersion: particles with slightly different momentum follow different equilibrium trajectories. To first order,

$$
x(s)=x_\beta(s)+D(s)\delta,
$$

where $x_\beta$ is betatron motion and $D(s)$ is the **dispersion function**.

**Challenge:** A synchrotron light source keeps 3 GeV electrons on a circular path using a dipole with a 1 m bending radius. What magnetic field must the dipole produce? (Take unit charge and use the approximate rigidity relation.)

---

## 6. Quadrupoles and transverse focusing

A beam would spread transversely without focusing. Quadrupole magnets provide focusing analogous to optical lenses, but with an important twist: a quadrupole focuses in one plane and defocuses in the other. Alternating focusing and defocusing quadrupoles produces stable net confinement, called **strong focusing** or alternating-gradient focusing. [home](https://www.home.cern/science/accelerators/how-accelerator-works)

Near the magnet center, an ideal normal quadrupole has

$$
B_x = Gy,
\qquad
B_y = Gx,
$$

where

$$
G=\frac{\partial B_y}{\partial x}
$$

is the field gradient.

The normalized focusing strength is

$$
k(s)=\frac{qG(s)}{p}
$$

for a horizontally focusing quadrupole, with sign convention depending on plane and charge.

The transverse motion is described by **Hill’s equation**:

$$
x''+K_x(s)x=0,
$$

$$
y''+K_y(s)y=0,
$$

where primes denote derivatives with respect to the reference-path coordinate $s$. The functions $K_x(s)$ and $K_y(s)$ include quadrupole focusing and, in the horizontal plane, contributions from bending and dispersion.

A general linear-optics solution can be written as

$$
x(s)
=
\sqrt{\varepsilon_x\beta_x(s)}
\cos\!\left[\psi_x(s)+\phi_x\right].
$$

Here:

- $\varepsilon_x$ is the geometric emittance.
- $\beta_x(s)$ is the Twiss beta function, which controls beam envelope size.
- $\psi_x(s)$ is the betatron phase advance.
- $\phi_x$ is set by the particle’s initial conditions.

The RMS beam size is approximately

$$
\sigma_x^2
=
\beta_x\varepsilon_x
+
\left(D_x\sigma_\delta\right)^2,
$$

where $\sigma_\delta$ is relative momentum spread. The first term is betatron size; the second is dispersive size.

### Twiss parameters and emittance

The phase-space ellipse for an uncoupled beam is written

$$
\gamma x^2+2\alpha xx'+\beta x'^2=\varepsilon,
$$

with

$$
\beta\gamma-\alpha^2=1.
$$

The three quantities $\alpha,\beta,\gamma$ are the **Twiss parameters**. They characterize the shape and orientation of the beam ellipse; $\varepsilon$ measures its area.

In conservative linear dynamics, Liouville’s theorem says phase-space density is preserved. Geometric emittance changes under acceleration because the angular coordinate scales with momentum, so accelerator physicists often use normalized emittance:

$$
\varepsilon_n=\beta_{\mathrm{rel}}\gamma_{\mathrm{rel}}\varepsilon.
$$

In ideal acceleration without damping or heating, $\varepsilon_n$ is approximately conserved.

---

## 7. Higher-order magnets and corrections

Real beams have finite size and explore nonlinear fields. Multipole magnets are described by a transverse complex-field expansion:

$$
B_y+iB_x
=
\sum_{n=1}^{\infty}
\left(B_n+iA_n\right)
\left(\frac{x+iy}{r_0}\right)^{n-1}.
$$

The first terms are:

| Order | Magnet | Primary purpose |
|---|---|---|
| $n=1$ | Dipole | Steering and bending |
| $n=2$ | Quadrupole | Linear focusing |
| $n=3$ | Sextupole | Chromaticity correction |
| $n=4$ | Octupole | Amplitude-dependent tune spread, nonlinear control |

A **sextupole** produces fields that scale quadratically with displacement. Its key role is correcting chromaticity: the momentum dependence of focusing.

The betatron tune is the number of transverse oscillations per turn:

$$
Q_x=\frac{1}{2\pi}\oint \frac{ds}{\beta_x(s)},
\qquad
Q_y=\frac{1}{2\pi}\oint \frac{ds}{\beta_y(s)}.
$$

Because quadrupole focusing scales roughly as $1/p$, particles with momentum error $\delta$ have different tunes. The chromaticity is

$$
\xi_{x,y}
=
\frac{dQ_{x,y}}{d\delta}.
$$

Uncorrected chromaticity can make off-momentum particles encounter dangerous resonances.

Resonances occur when

$$
mQ_x+nQ_y=p,
$$

with integers $m,n,p$. Low-order resonances are generally more harmful because nonlinear errors can coherently amplify oscillations, enlarge emittance, and reduce dynamic aperture.

---

## 8. Beam transport matrices

For linear beam optics, a particle’s horizontal phase-space coordinates are represented by

$$
\mathbf X =
\begin{pmatrix}
x\\
x'
\end{pmatrix}.
$$

A beamline element maps input to output via a transfer matrix:

$$
\mathbf X_f=M\mathbf X_i.
$$

For a drift of length $L$,

$$
M_{\mathrm{drift}}
=
\begin{pmatrix}
1 & L\\
0 & 1
\end{pmatrix}.
$$

For a thin quadrupole with focal length $f$,

$$
M_{\mathrm{quad}}
=
\begin{pmatrix}
1 & 0\\
-\frac{1}{f} & 1
\end{pmatrix}
$$

in its focusing plane.

A full lattice is obtained by multiplying the matrices in traversal order. This formalism underlies optics design, matching sections, beam transport, injection, extraction, and many orbit-correction algorithms.

For a stored beam, the one-turn matrix determines stability. In one transverse plane, stable linear motion requires

$$
\lvert\mathrm{Tr}(M_{\mathrm{turn}})\rvert<2.
$$

**Challenge:** Assemble the transfer matrix for a thin focusing quadrupole of focal length $f$ placed between two equal drifts of length $L$, multiplying the three matrices in traversal order. What condition on the product's trace keeps the transverse motion stable?

---

## 9. The lattice and beam optics

The ordered arrangement of magnets, RF cavities, diagnostics, and drift spaces is called the **lattice**. Common lattice regions include:

- **Arcs**, dominated by dipoles and quadrupoles, which bend the beam around a ring.
- **Straight sections**, used for RF cavities, injection, extraction, collimation, experiments, undulators, or interaction points.
- **Dispersion suppressors**, which bring dispersion from a nonzero arc value to near zero in a straight section.
- **Final-focus systems**, which make beams extremely small at collision points.
- **Chicanes**, usually four-dipole systems used for bunch compression, path-length adjustment, or energy diagnostics.

At a collider interaction point, luminosity determines event rate:

$$
R=\mathcal L\sigma,
$$

where $\sigma$ is the relevant physics cross section and $\mathcal L$ is luminosity.

For two head-on Gaussian beams with equal bunch populations $N$, collision frequency $f_c$, and transverse RMS sizes $\sigma_x,\sigma_y$,

$$
\mathcal L
=
\frac{f_cN^2}{4\pi\sigma_x\sigma_y}.
$$

For unequal beams, replace $N^2$ by $N_1N_2$. This formula shows why colliders seek high bunch population, many collisions per second, and extremely small beam sizes at the interaction point.

---

## 10. Longitudinal beam dynamics

A realistic beam is divided into bunches, each with finite length and energy spread. Longitudinal dynamics describes the motion in $(z,\delta)$ or $(\phi,\Delta E)$ space.

Let

$$
\delta=\frac{p-p_0}{p_0}
$$

be the relative momentum deviation and $z$ the longitudinal displacement with respect to the synchronous particle. A momentum error changes orbit length through dispersion and momentum compaction:

$$
\frac{\Delta C}{C}=\alpha_c\delta.
$$

The RF system gives phase-dependent energy kicks, while the ring’s path-length dependence converts energy errors into arrival-time errors. Together they generate synchrotron oscillation.

The longitudinal phase-space area occupied by a bunch is its **longitudinal emittance**. Longitudinal emittance matters for capture, bunch compression, beam loading, collision geometry, and collective instabilities.

A bunch compressor typically uses an RF section to create an energy–position correlation (an energy chirp) and a magnetic chicane with longitudinal dispersion

$$
R_{56}=\frac{\partial z_f}{\partial \delta_i}.
$$

To first order,

$$
z_f=z_i+R_{56}\delta_i.
$$

If an upstream RF system produces $\delta_i\simeq hz_i$, then

$$
z_f\simeq (1+hR_{56})z_i.
$$

Compression occurs when $1+hR_{56}$ is near zero.

---

## 11. Synchrotron radiation

Any accelerating charge radiates. In a circular accelerator, transverse acceleration in dipoles causes **synchrotron radiation**. It is a dominant design constraint for electron and positron rings, but far less severe for proton rings because radiative effects fall steeply with particle mass. CERN notes that RF systems in electron storage rings must compensate these radiation losses. [indico.cern](https://indico.cern.ch/event/1356619/contributions/5711728/attachments/2817390/4918969/RFSystemsSingle.pdf)

For an ultra-relativistic particle following curvature radius $\rho$, the radiated power scales as

$$
P_{\mathrm{rad}}
=
\frac{q^2c}{6\pi\varepsilon_0}
\frac{\gamma^4}{\rho^2}.
$$

The most important qualitative result is

$$
P_{\mathrm{rad}}\propto \frac{E^4}{m^4\rho^2}.
$$

Thus, at equal energy and ring radius, electrons radiate enormously more strongly than protons.

For an electron storage ring, the energy loss per turn has the form

$$
U_0
=
\frac{C_\gamma}{2\pi}E^4
\oint\frac{ds}{\rho^2(s)},
$$

where $C_\gamma$ is a radiation constant. In a ring with approximately uniform bending,

$$
U_0 \propto \frac{E^4}{\rho}.
$$

Synchrotron radiation has both benefits and costs:

- It creates exceptionally bright X-ray and ultraviolet beams for materials science, chemistry, biology, and imaging.
- It damps transverse and longitudinal oscillations in electron rings.
- Quantum photon emission also excites random motion, producing a nonzero equilibrium emittance and energy spread.
- It imposes substantial RF-power, heat-load, vacuum, shielding, and component-design requirements.

**Challenge:** Synchrotron-radiation power scales as $P_{\mathrm{rad}}\propto E^4/m^4$. For two beams of equal energy, by roughly how many orders of magnitude does an electron radiate more strongly than a proton? (Use $m_p\approx 1836\,m_e$.)

---

## 12. Beam–matter interactions and vacuum

Particle beams travel through a beam pipe under ultrahigh vacuum because collisions with residual gas can scatter particles, change charge state, create backgrounds, and degrade beam lifetime. [home](https://www.home.cern/science/accelerators/how-accelerator-works)

For a residual gas number density $n$, interaction cross section $\sigma$, and path length $L$, the probability of at least one interaction is approximately

$$
P_{\mathrm{int}}
=
1-e^{-n\sigma L}
\simeq n\sigma L
$$

when $n\sigma L\ll 1$.

The ideal-gas relation gives

$$
n=\frac{P}{k_BT},
$$

so lower pressure means fewer gas molecules and a longer beam lifetime.

Vacuum hardware includes beam pipes, ion pumps, turbomolecular pumps, non-evaporable getters, gauges, valves, bellows, vacuum chambers, and absorbers. Accelerator vacuum systems also must handle photon-stimulated desorption, electron-cloud effects, gas loads from warm surfaces, and cryogenic pumping in superconducting regions. Cleanliness is particularly important for superconducting RF cavities: particles and surface defects can cause field emission, heating, and performance loss. [arxiv](https://arxiv.org/ftp/arxiv/papers/2006/2006.02820.pdf)

---

## 13. Diagnostics and feedback

An accelerator cannot be operated solely from its design model. It needs diagnostics that measure the actual beam.

| Diagnostic | Measures | Basic principle |
|---|---|---|
| Beam-position monitor (BPM) | Transverse orbit, arrival time | Beam-induced signals in electrodes |
| Current transformer | Beam current or bunch charge | Magnetic field from passing charge |
| Screen or wire scanner | Beam profile | Intercepting beam or emitted light |
| Synchrotron-light monitor | Beam size/profile | Optical radiation from bending magnets or undulators |
| Beam-loss monitor | Particle losses | Ionization, scintillation, or radiation detection |
| Spectrometer | Momentum/energy | Dispersion in a known magnetic field |
| RF pickup | Bunch phase and longitudinal structure | Beam-induced RF signals |

A BPM system provides a measured orbit vector $\mathbf x$. Corrector magnets change the orbit approximately as

$$
\Delta\mathbf x=R\Delta\boldsymbol\theta,
$$

where:

- $R$ is the orbit-response matrix.
- $\Delta\boldsymbol\theta$ is the vector of steering-corrector kicks.

Orbit correction solves the inverse problem, generally using a singular-value decomposition or regularized least-squares method.

Fast feedback loops suppress orbit jitter, tune drift, energy variation, RF phase noise, and coupled-bunch instabilities. Controls systems integrate these local devices into facility-wide operation. [e-publishing.cern](https://e-publishing.cern.ch/index.php/CYRSP/article/view/1616)

---

## 14. Collective effects and intensity limits

So far, particles have been treated as independent. At high current or high charge density, the beam’s own electromagnetic fields and its interaction with its environment can dominate performance.

Important collective effects include:

- **Space charge:** Direct self-fields of a nonneutral beam, most important at low energy because the cancellation between electric and magnetic self-forces is incomplete.
- **Wakefields:** Electromagnetic fields left behind by a bunch in cavities, resistive walls, transitions, and other structures.
- **Beam loading:** Energy extracted from RF cavities by the beam itself.
- **Electron cloud:** Electrons generated inside a positively charged particle beam pipe that can destabilize the beam.
- **Ion trapping:** Residual-gas ions trapped by an electron or positron beam.
- **Impedance-driven instabilities:** Coherent oscillations amplified by interaction with chamber and RF impedance.
- **Intrabeam scattering:** Multiple Coulomb scattering among particles within the same bunch, especially relevant for hadron and ion beams.

For a wake function $W_\parallel(z)$, the longitudinal voltage induced by a bunch with line-charge distribution $\lambda(z)$ is schematically

$$
V_{\mathrm{wake}}(z)
=
-\int_{-\infty}^{z}
W_\parallel(z-z')\lambda(z')\,dz'.
$$

This induced voltage can distort bunch shape and increase energy spread. The transverse counterpart can deflect trailing particles and drive beam-breakup or coupled-bunch instabilities.

For a high-intensity bunch, beam quality is therefore not determined solely by magnet alignment and RF settings; it also depends on impedance budgets, vacuum chamber geometry, bunch pattern, feedback bandwidth, collimation, and machine protection.

---

## 15. Collimation, extraction, and beam dumps

Not every particle remains within the desired phase-space acceptance. Halo particles can strike sensitive components, quench superconducting magnets, activate equipment, or create detector background.

A **collimation system** deliberately intercepts halo in robust, shielded locations. It commonly uses:

- Primary collimators to scatter halo particles.
- Secondary collimators to absorb scattered particles.
- Absorbers and masks near sensitive magnets or experiments.
- Beam-loss monitors to detect abnormal losses.

A high-energy beam stores enormous energy. For a bunch population $N_b$, number of bunches $n_b$, and particle energy $E_p$,

$$
U_{\mathrm{beam}}=n_bN_bE_p.
$$

Even when $E_p$ is quoted per particle, the total stored beam energy can be macroscopic and destructive. Machine-protection systems must detect faults and trigger fast extraction or inhibit further injection.

A beam dump converts beam energy into heat in a designed absorber. For high-power machines, dump systems can use dilution kickers to sweep the beam across a larger area, reducing peak energy density.

---

## 16. Superconductivity and cryogenics

Superconducting technology enables high fields and high RF efficiency:

- **Superconducting magnets** provide strong dipole or quadrupole fields with low resistive loss.
- **Superconducting RF cavities** can sustain high accelerating fields with much lower wall losses than normal-conducting cavities.
- **Cryogenic systems** remove heat while maintaining components at very low temperature.

The tradeoff is complexity: cryogenic loads, quench protection, magnetic-field quality, mechanical stability, insulation vacuum, and fault management become essential.

A magnet **quench** occurs when part of a superconducting coil transitions to the normal-resistive state. The stored magnetic energy,

$$
U_{\mathrm{mag}}
=
\frac{1}{2}LI^2,
$$

must be safely extracted or distributed before local heating damages the coil.

Superconducting RF performance is often characterized by the quality factor

$$
Q_0
=
\omega
\frac{U_{\mathrm{stored}}}{P_{\mathrm{diss}}},
$$

where $U_{\mathrm{stored}}$ is electromagnetic energy stored in the cavity and $P_{\mathrm{diss}}$ is power dissipated in its walls. High $Q_0$ means low RF dissipation, but the cryogenic cost per watt at a few kelvin is substantial.

---

## 17. A compact model of an accelerator

A useful mental model is to regard an accelerator as six coupled systems:

1. **Source and injector:** Produce the desired particles and prepare their initial phase space.
2. **RF system:** Adds energy and controls longitudinal phase space.
3. **Magnet lattice:** Bends, focuses, corrects, and transports the beam.
4. **Vacuum and beam pipe:** Preserve beam lifetime and limit unwanted interactions.
5. **Diagnostics and controls:** Measure beam state and close feedback loops.
6. **Protection and safety systems:** Control losses, radiation, stored energy, and failure modes.

At the beam-dynamics level, much of accelerator physics reduces to controlling a six-dimensional phase-space vector:

$$
\mathbf X
=
(x,x',y,y',z,\delta)^T.
$$

The goal is to transport this distribution from source to target, collision point, storage ring, undulator, treatment room, or beam dump while preserving—or deliberately transforming—its intensity, emittance, energy, bunch length, and stability.

## 18. Essential formula sheet

$$
\mathbf F=q(\mathbf E+\mathbf v\times\mathbf B)
$$

$$
E^2=p^2c^2+m^2c^4
$$

$$
p=qB\rho
$$

$$
p[\mathrm{GeV}/c]\simeq0.2998\,q[e]\,B[\mathrm T]\,\rho[\mathrm m]
$$

$$
\Delta E_{\mathrm{RF}}=qV_{\mathrm{RF}}\sin\phi
$$

$$
f_{\mathrm{RF}}=hf_{\mathrm{rev}}
$$

$$
x''+K_x(s)x=0,
\qquad
y''+K_y(s)y=0
$$

$$
x(s)=\sqrt{\varepsilon\beta(s)}
\cos\!\left[\psi(s)+\phi\right]
$$

$$
\sigma_x^2=\beta_x\varepsilon_x+(D_x\sigma_\delta)^2
$$

$$
\varepsilon_n=\beta_{\mathrm{rel}}\gamma_{\mathrm{rel}}\varepsilon
$$

$$
Q_{x,y}=\frac{1}{2\pi}\oint\frac{ds}{\beta_{x,y}(s)}
$$

$$
\xi_{x,y}=\frac{dQ_{x,y}}{d\delta}
$$

$$
\frac{\Delta f_{\mathrm{rev}}}{f_{\mathrm{rev}}}
=-\eta\delta,
\qquad
\eta=\alpha_c-\frac{1}{\gamma^2}
$$

$$
P_{\mathrm{rad}}
=
\frac{q^2c}{6\pi\varepsilon_0}
\frac{\gamma^4}{\rho^2}
$$

$$
\mathcal L
=
\frac{f_cN_1N_2}{4\pi\sigma_x\sigma_y}
$$

$$
R=\mathcal L\sigma
$$

$$
U_{\mathrm{beam}}=n_bN_bE_p
$$

These equations form a practical foundation for studying beam optics, storage rings, linacs, colliders, synchrotron-light sources, free-electron lasers, hadron therapy, and high-power proton machines.

---

**Final challenge:** Imagine doubling both the LHC's beam energy and its number of bunches. Using the rigidity relation, the stored-beam-energy formula $U_{\mathrm{beam}}=n_bN_bE_p$, and the luminosity formula $\mathcal L=\frac{f_cN_1N_2}{4\pi\sigma_x\sigma_y}$, work out how the required dipole field, the stored beam energy, and the event rate each change — and explain which one makes the machine hardest to run safely.

---

## Reference Links

- [CERN — How an accelerator works](https://www.home.cern/science/accelerators/how-accelerator-works)
- [CERN — RF systems and synchrotron-radiation compensation (PDF)](https://indico.cern.ch/event/1356619/contributions/5711728/attachments/2817390/4918969/RFSystemsSingle.pdf)
- [arXiv — Superconducting RF cavity physics](https://arxiv.org/ftp/arxiv/papers/2006/2006.02820.pdf)
- [CERN — Accelerator controls and feedback](https://e-publishing.cern.ch/index.php/CYRSP/article/view/1616)
