---
title: "Why the Sky Is Not Purple"
date: 2026-02-01 09:00:00 +08:00
categories: physics
tags: ["light", "scattering", "atmosphere", "color", "optics", "rayleigh scattering", "blackbody radiation"]
image_name: why-the-sky-is-not-purple.png
image_description: "A bright blue sky gradient above a horizon, with a subtle spectrum overlay showing scattered wavelengths."
comments: true
mathjax: true
---

![The sky is blue because short wavelengths scatter most.](/assets/images/why-the-sky-is-not-purple.png)
*The sky is blue because short wavelengths scatter most.*

<!-- Image Description: A bright blue sky gradient above a horizon, with a subtle spectrum overlay showing scattered wavelengths. -->

## Blue light wins the scattering game

*By Peter Teoh, Science Writer*

**Challenge to the reader:** Rayleigh scattering scales as $1/\lambda^4$. Using violet ($\lambda \approx 400\ \mathrm{nm}$) and red ($\lambda \approx 700\ \mathrm{nm}$), compute how many times more strongly violet scatters than red. Then do the same for violet versus blue ($\lambda \approx 450\ \mathrm{nm}$). Given that violet scatters *more* than blue, use the three reasons below to explain why the sky nonetheless appears blue rather than purple.

Sunlight is a mix of colors. The sky looks blue because shorter wavelengths scatter more in the atmosphere — and our eyes are most sensitive to that range. But here is the puzzle: violet light has an even *shorter* wavelength than blue, so it scatters even more. Why, then, is the sky not violet or purple? The answer is a three-way conspiracy of physics, sunlight, and human biology.

---

## 1. The core idea: light bounces off molecules

Sunlight travels through space as a straight beam. When it hits Earth's atmosphere, it encounters a vast number of gas molecules — mostly nitrogen and oxygen — each far smaller than the wavelength of visible light. These molecules do not simply let the light pass; they **scatter** it, redirecting some of it in every direction. The sky is simply the scattered sunlight arriving at your eye from all over the atmosphere.

The crucial fact, discovered by Lord Rayleigh in 1871, is that this scattering is violently **wavelength-dependent**. The intensity of light scattered by a small particle is

$$
I \propto \frac{1}{\lambda^4},
$$

where $\lambda$ is the wavelength. This is **Rayleigh scattering**. The full formula for a single small spherical particle is

$$
I = I_0\, \frac{8\pi^4 N \alpha^2}{\lambda^4 R^2}\left(1 + \cos^2\theta\right),
$$

where $N$ is the number of scattering particles, $\alpha$ their polarizability, $R$ the distance to the observer, and $\theta$ the scattering angle. But the physical essence is entirely contained in that single factor: **shorter wavelength means much more scattering.**

---

## 2. The $1/\lambda^4$ rule, in numbers

Visible light spans roughly $400\ \mathrm{nm}$ (violet) to $700\ \mathrm{nm}$ (red). Let us apply the fourth-power rule.

The ratio of scattering between two wavelengths $\lambda_1$ and $\lambda_2$ is

$$
\frac{I(\lambda_1)}{I(\lambda_2)}
= \left(\frac{\lambda_2}{\lambda_1}\right)^4.
$$

**Violet vs. red:**

$$
\frac{I(400\ \mathrm{nm})}{I(700\ \mathrm{nm})}
= \left(\frac{700}{400}\right)^4 = (1.75)^4 \approx 9.4.
$$

Violet scatters nearly **10 times** more strongly than red.

**Violet vs. blue:**

$$
\frac{I(400\ \mathrm{nm})}{I(450\ \mathrm{nm})}
= \left(\frac{450}{400}\right)^4 = (1.125)^4 \approx 1.6.
$$

Violet scatters about **1.6 times** more than blue. So if scattering were the *only* factor, the sky should lean violet. The fact that it does not is the whole story of this article.

**Challenge (mid-post):** Green light has $\lambda \approx 550\ \mathrm{nm}$. Compute the scattering ratio of green versus red, and of violet versus green. By what factor does blue ($450\ \mathrm{nm}$) out-scatter orange ($600\ \mathrm{nm}$)?

---

## 3. Reason one: the Sun does not emit much violet

The Sun is approximately a **blackbody** at temperature $T \approx 5778\ \mathrm{K}$. The energy it radiates at each wavelength is given by **Planck's law**:

$$
B_\lambda(T) = \frac{2hc^2}{\lambda^5}\,\frac{1}{e^{hc/(\lambda k_B T)} - 1},
$$

where $h$ is Planck's constant and $k_B$ is Boltzmann's constant. The wavelength of peak emission is given by **Wien's displacement law**:

$$
\lambda_{\mathrm{max}} = \frac{b}{T},
\qquad
b = 2.898\times 10^{-3}\ \mathrm{m\,K}.
$$

For the Sun,

$$
\lambda_{\mathrm{max}} = \frac{2.898\times 10^{-3}}{5778} \approx 502\ \mathrm{nm},
$$

which is green-yellow. The solar spectrum **peaks in the green**, and falls off toward both the red and the violet ends. So the Sun simply *emits less violet than blue*. There is less violet light available to be scattered in the first place.

---

## 4. Reason two: our eyes barely see violet

Even the violet light that *is* emitted and scattered must be *detected* by the human eye to contribute to the color we perceive. Here human biology intervenes dramatically.

The eye's sensitivity to different wavelengths is described by the **photopic luminous efficiency function** $V(\lambda)$, which peaks at about $555\ \mathrm{nm}$ (green) and falls steeply toward both ends. The relative values are striking:

| Wavelength | Color | Relative sensitivity $V(\lambda)$ |
|---|---|---|
| $400\ \mathrm{nm}$ | Violet | $\approx 0.0004$ |
| $450\ \mathrm{nm}$ | Blue | $\approx 0.038$ |
| $555\ \mathrm{nm}$ | Green | $1.0$ |
| $700\ \mathrm{nm}$ | Red | $\approx 0.004$ |

Our eyes are roughly **100 times** more sensitive to blue ($450\ \mathrm{nm}$) than to violet ($400\ \mathrm{nm}$). Violet scatters a mere 1.6 times more than blue — but we are two orders of magnitude *less* able to see it. Blue wins decisively.

There is a second biological twist. The eye has two kinds of photoreceptors: **cones** (for bright, colored vision) and **rods** (for dim light). In low light the rods dominate, and they are *more* sensitive to shorter wavelengths than the cones — the **Purkinje effect**. This is why at twilight, blue objects look relatively brighter while red objects fade, a subtle shift in color perception as the light dims.

---

## 5. Reason three: the atmosphere filters violet on the way in

The third factor is that violet (and the ultraviolet beyond it) is removed by the atmosphere itself before it ever reaches your eye.

- **Ozone** in the stratosphere absorbs strongly in the ultraviolet and the short-wavelength end of the visible violet. Sunlight entering the atmosphere at a shallow angle passes through a long column of ozone, stripping out much of the violet and near-UV.

- The scattered violet light must also **re-scatter** on its way to your eye. Because violet scatters so strongly, it is more likely to be scattered again and again, smearing it across the whole sky rather than delivering it straight to you. Blue, scattering slightly less, survives a more direct path.

The combined result of all three reasons — the solar spectrum, human vision, and atmospheric filtering — is that the **peak of "scattered light as perceived by a human" lands squarely in the blue**, around $450$–$470\ \mathrm{nm}$. The sky is blue because blue is the wavelength that is simultaneously abundant, strongly scattered, and clearly visible.

---

## 6. Why sunsets turn red and orange

The same physics explains the color of sunsets. When the Sun is low on the horizon, its light travels through a much longer path of atmosphere — through a much greater optical depth. The attenuation of a beam along a path is described by the **Beer–Lambert law**:

$$
I = I_0\, e^{-\tau},
$$

where the **optical depth** $\tau$ is proportional to both the path length and the scattering cross-section — and therefore to $1/\lambda^4$. Along a long, grazing path, blue and violet are scattered out almost completely; only the long wavelengths — red, orange, yellow — survive to reach your eye. This is also why the low Sun and Moon look reddish while the overhead Sun looks white.

**Challenge (mid-post):** Rayleigh scattering also explains why distant mountains look *blue*. If the scattering cross-section scales as $\lambda^{-4}$, explain in one sentence why the "haze" of air between you and a distant mountain preferentially scatters blue light into your eye, tinting the mountain blue. Then explain why clouds, which are made of water droplets *larger* than the wavelength of light, look white instead.

---

## 7. When particles get bigger: Tyndall scattering

Rayleigh scattering applies only when the scattering particles are much *smaller* than the wavelength of light (air molecules, roughly $0.3\ \mathrm{nm}$, versus light at $500\ \mathrm{nm}$). When particles approach or exceed the wavelength — dust, water droplets, smoke — the wavelength dependence weakens and eventually disappears.

This is **Tyndall scattering** (or, more generally, **Mie scattering** when particles are comparable to the wavelength). Large particles scatter all visible wavelengths roughly equally, which is why:

- **Clouds and fog are white** — every wavelength scatters alike.
- **The sky whitens near the horizon** — your line of sight passes through more large dust and aerosol particles.
- **Smoke from a fire looks bluish-gray** for fine particles but **white** for larger ones.

The very same mechanism underlies a surprising collection of everyday blues:

- **Blue eyes** contain no blue pigment. The iris has a colorless stroma whose fine fibers scatter light by the Rayleigh mechanism, and the short wavelengths scattered back out make the eye look blue — exactly why blue eyes can look more gray or green under different lighting.
- **Blue smoke** is fine particulate smoke scattering blue light preferentially.
- **The "aerial perspective"** that painters use — distant objects rendered bluer and hazier — is Rayleigh scattering of the intervening air.

---

## 8. Deeper significance: color is physics *and* perception

The question "why is the sky blue and not purple?" turns out to be a perfect case study in how a scientific answer must span three layers at once:

1. **The light source** (the Sun's blackbody spectrum, peaking near green),
2. **The medium** (air molecules scattering as $\lambda^{-4}$, and ozone filtering the violet),
3. **The detector** (the human eye's $V(\lambda)$ curve, nearly blind to violet).

Remove any one layer and the prediction fails. This is why color is never just "out there" in the world — it is an interaction between a physical spectrum, a scattering medium, and a nervous system. The same reasoning explains why some animals, whose eyes have different spectral sensitivities, live in a visibly different sky than we do. A bee, for example, can see ultraviolet, and its sky is not the blue we know.

**Final challenge:** (a) Using Wien's law, estimate the peak wavelength of a $3000\ \mathrm{K}$ star (a red dwarf) and of a $10{,}000\ \mathrm{K}$ star (a hot blue star). Which color dominates each? (b) Explain why a hypothetical planet orbiting a cool red-dwarf star would have a sky that is *not* blue — what wavelength would its weaker, redder sunlight preferentially scatter? (c) On a clear day at noon, is the light directly *overhead* more blue or more violet than the light near the horizon, and why does the horizon look whiter? Use the ideas of optical depth and particle size in your answer.

---

## References

- **Strutt, J. W. (Lord Rayleigh)** (1871). "On the light from the sky, its polarization and colour," *Philosophical Magazine* 41: 107. [Rayleigh scattering](https://en.wikipedia.org/wiki/Rayleigh_scattering)
- **Planck, M.** (1900). "On the Theory of the Law of Energy Distribution in the Normal Spectrum." [Planck's law](https://en.wikipedia.org/wiki/Planck%27s_law)
- **Wien, W.** (1893). "On the wavelength of maximum emission." [Wien's displacement law](https://en.wikipedia.org/wiki/Wien%27s_displacement_law)
- **CIE** (1931). "Commission internationale de l'éclairage — luminosity function." [Luminosity function](https://en.wikipedia.org/wiki/Luminosity_function)
- **Tyndall, J.** (1869). "On the blue colour of the sky, the polarization of skylight." [Tyndall effect](https://en.wikipedia.org/wiki/Tyndall_effect)
- **Mie, G.** (1908). "Beiträge zur Optik trüber Medien." [Mie scattering](https://en.wikipedia.org/wiki/Mie_scattering)
- **Purkinje effect.** [Wikipedia](https://en.wikipedia.org/wiki/Purkinje_effect)
- **Color of the sky.** [Wikipedia](https://en.wikipedia.org/wiki/Color_of_the_sky)
