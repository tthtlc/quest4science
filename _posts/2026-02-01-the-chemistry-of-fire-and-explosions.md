---
title: "The Chemistry of Fire: Why a Single Spark Can Turn a Grain Silo Into a Bomb"
date: 2026-02-01 09:00:00 +08:00
categories: chemistry
tags: ["combustion", "explosions", "oxidation", "activation-energy", "reaction-rates", "energy"]
image_name: the-chemistry-of-fire-and-explosions.png
image_description: "A controlled flame front in a lab chamber, with a transparent view of expanding gas."
comments: true
mathjax: true
---

![Combustion and explosions are chemistry at speed.](/assets/images/the-chemistry-of-fire-and-explosions.png)
*Combustion and explosions are chemistry at speed.*

<!-- Image Description: A controlled flame front in a lab chamber, with a transparent view of expanding gas. -->

## Rapid chemistry, rapid energy

*By Peter Teoh, Science Writer*

**Challenge to the reader:** Use the Arrhenius equation to answer this: a fuel has an activation energy of $100\ \mathrm{kJ/mol}$. By what factor does its combustion speed up when the temperature rises from 300 K to 500 K? Then use your answer to explain why a smoldering pile can burst into open flame — and why that is exactly the mechanism behind the grain-silo explosions that destroy entire buildings.

Fire is fast oxidation. An explosion is fire with its foot on the accelerator. Both are the same chemistry — fuel molecules combining with oxygen to release heat — running at different speeds, in different confinements, with dramatically different consequences. The difference between a campfire and a bomb is not the chemistry; it is the *rate*.

---

## 1. The core idea: fire is a runaway chain reaction

Combustion is an oxidation reaction in which a fuel combines with oxygen, releasing energy:

$$
\mathrm{CH_4 + 2\,O_2 \rightarrow CO_2 + 2\,H_2O + energy}.
$$

For methane, the energy released is about $890\ \mathrm{kJ}$ per mole. Every combustion reaction releases heat — and that heat is what makes fire self-sustaining. The energy released by one round of reactions raises the temperature of the neighbors, which speeds up *their* reactions, which releases more heat. Fire is a **positive feedback loop written in chemistry**: an exothermic reaction that heats its own reactants.

The classic **fire triangle** — fuel, oxygen, heat — is really a fire *tetrahedron*: the fourth face is the **chain reaction** itself. Remove any one, and the loop dies.

---

## 2. The rate equation: why heat makes fire run away

Chemical reactions do not happen unless the molecules can climb an energy hill — the **activation energy** $E_a$. The fraction of molecules energetic enough to react at temperature $T$ is the exponential in the **Arrhenius equation**:

$$
k = A\,e^{-E_a / RT},
$$

where $k$ is the rate constant, $A$ a collision-frequency factor, and $R = 8.314\ \mathrm{J\,mol^{-1}\,K^{-1}}$ the gas constant. The exponential is brutally sensitive to temperature. The ratio of rates at two temperatures is

$$
\frac{k_2}{k_1} = \exp\left[\frac{E_a}{R}\left(\frac{1}{T_1} - \frac{1}{T_2}\right)\right].
$$

Take a reaction with $E_a = 150\ \mathrm{kJ/mol}$ and heat it from 300 K to 310 K — a ten-degree rise:

$$
\frac{k_2}{k_1} = \exp\left[\frac{150{,}000}{8.314}\left(\frac{1}{300} - \frac{1}{310}\right)\right] \approx e^{1.94} \approx 7.
$$

Ten degrees, **seven times faster**. A 100-degree rise can accelerate a reaction by thousands of times. This single equation explains why fires accelerate once they start, why we refrigerate food, and why a smoldering ember that survives the night can roar to life at noon.

**Challenge (mid-post):** Compute the same ratio for the opening-challenge fuel ($E_a = 100\ \mathrm{kJ/mol}$) over the same 10 K rise, and again for a rise from 300 K to 600 K. How many *orders of magnitude* did the rate gain across each step?

---

## 3. From burning to booming: deflagration and detonation

An ordinary fire spreads by heat moving ahead of the flame — conduction, convection, radiation — at subsonic speeds. This is **deflagration**, a flame front creeping at meters per second.

A **detonation** is different. If the reaction releases energy fast enough, it drives a **shock wave** — a pressure front moving *faster than sound* — that compresses the unburned fuel ahead of it, heating it to ignition in microseconds. The shock wave and the reaction front lock together and race through the fuel at kilometers per second. Detonation is what separates "burning" from "exploding."

Confinement matters just as much. The same reaction that burns quietly in the open can burst its container when the hot product gases — vastly larger in volume than the starting solids or liquids — cannot expand. The ideal gas law sets the scale:

$$
PV = nRT.
$$

One mole of gas occupies $22.4\ \mathrm{L}$ at room temperature; heat it to a combustion flame's 2500 K, and it wants roughly eight times that volume. Deny it the room, and the pressure climbs until the vessel fails — violently.

---

## 4. The surface-area trap: why dust explodes

Now the grain silo. Wheat flour is pure fuel — starch, a carbohydrate — but a sack of flour does not explode. Scatter the same flour as a cloud of fine dust, and a single spark can level the building. The difference is **surface area**.

A cube of side $L$ has surface area $6L^2$. Split a 1 mm grain ($L = 10^{-3}\ \mathrm{m}$) into 1 µm particles ($L = 10^{-6}\ \mathrm{m}$), and you get

$$
\left(\frac{10^{-3}}{10^{-6}}\right)^{3} = 10^{9}
$$

particles, each with surface area $6\times 10^{-12}\ \mathrm{m^2}$. The total surface area grows from $6\times 10^{-6}\ \mathrm{m^2}$ to

$$
10^{9} \times 6\times 10^{-12} = 6\times 10^{-3}\ \mathrm{m^2}
$$

— a **thousand-fold** increase, and a thousand-fold more fuel surface in contact with oxygen. Combustion can only happen at the surface where fuel meets oxygen, so the reaction rate explodes with it. Every dust that can burn — flour, sugar, coal, aluminum, even powdered milk — can explode as a cloud. Dust explosions have destroyed grain elevators, sugar refineries, and coal mines for well over a century.

**Challenge (mid-post):** Rework the calculation for sugar ground to 100 µm particles (the size of icing sugar): how many particles come from a single 1 mm crystal, and what happens to the total surface area? Why is a 1 µm dust *more* dangerous than a 100 µm dust?

---

## 5. The energy ledger: what burning actually releases

The violence of a fire or explosion is set by the **energy density** of the fuel. The standard yardstick is TNT: one gram of TNT releases about $4184\ \mathrm{J}$. A fuel's "TNT equivalent" is simply

$$
\text{TNT equivalent} = \frac{\text{energy released}}{4184\ \mathrm{J/g}}.
$$

Gasoline releases about $46\ \mathrm{MJ}$ per kilogram, so one kilogram of gasoline carries the energy of

$$
\frac{46\times 10^{6}}{4184} \approx 11\ \mathrm{kg}
$$

of TNT. A full car tank, burned all at once, is the energy of a small bomb — which is why engines are designed to burn fuel gradually, and why fuel-air mixtures in confined spaces are so feared.

| Fuel | Energy density | Notes |
|---|---|---|
| TNT | $4.2\ \mathrm{kJ/g}$ | the reference explosive |
| Wood | $\sim 16\ \mathrm{kJ/g}$ | burns slowly, releases energy over minutes |
| Gasoline | $46\ \mathrm{kJ/g}$ | more energy per gram than TNT — but releases it slowly |
| Hydrogen | $142\ \mathrm{kJ/g}$ | highest per gram; per liter it is terrible |
| Fat (your body) | $37\ \mathrm{kJ/g}$ | you are, chemically, a fuel |

Notice the subtlety: TNT is *less* energetic than gasoline — yet it is the explosive. Explosive power is not about how much energy is stored, but about **how fast it is released**. TNT gives up its energy in microseconds; gasoline takes seconds to minutes; wood takes an hour. Rate, not amount, is the difference between a heater and a bomb.

---

## 6. Deeper significance: controlled fire built civilization

Fire is the first technology — the one that separated our ancestors from every other species. Cooking made food more digestible, which underwrote the evolution of large, energy-hungry brains. Metallurgy, ceramics, steam engines, and the internal combustion engine are all the same discovery repeated: **a chain reaction, controlled**. Every engine in the world is a fire that has been tamed into doing work; every explosion disaster is a fire that broke its leash.

The same Arrhenius exponential that makes fire dangerous is also what makes life possible: your body burns fuel at 37°C only because enzymes lower the activation energy to a level that body temperature can clear. Fire and metabolism are the same physics, set at different temperatures.

**Final challenge:** (a) A 1 cm³ lump of coal burns in an open fire over about 30 minutes. Scattered as 10 µm dust, its surface area grows by a factor of $10^{5}$ — estimate, using the surface-area reasoning of Section 4, what happens to its burning time in a dust cloud, and why a coal-dust mine explosion is a genuine industrial hazard. (b) One kilogram of methane ($\Delta H = 890\ \mathrm{kJ/mol}$, molar mass 16 g/mol) detonates inside a sealed 1 m³ vessel. How much energy is released, what is its TNT equivalent, and why does the pressure spike matter more than the heat?

---

## References

- **Arrhenius, S.** (1889). "On the reaction velocity of the mutual chemical transformation of substances," *Zeitschrift für physikalische Chemie* 4: 226. [Arrhenius equation](https://en.wikipedia.org/wiki/Arrhenius_equation)
- **Eckhoff, R. K.** (2003). *Dust Explosions in the Process Industries*, Gulf Professional Publishing. [Dust explosion](https://en.wikipedia.org/wiki/Dust_explosion)
- **Combustion.** [Combustion - Wikipedia](https://en.wikipedia.org/wiki/Combustion)
- **Explosion.** [Explosion - Wikipedia](https://en.wikipedia.org/wiki/Explosion)
- **TNT equivalent.** [TNT equivalent - Wikipedia](https://en.wikipedia.org/wiki/TNT_equivalent)
