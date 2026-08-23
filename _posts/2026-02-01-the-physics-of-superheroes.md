---
title: "The Physics of Superheroes: Why Saving the World Would Turn You Into a Smear"
date: 2026-02-01 09:00:00 +08:00
categories: physics
tags: ["mechanics", "energy", "drag", "g-forces", "kinetic-energy", "superheroes"]
image_name: the-physics-of-superheroes.png
image_description: "A superhero silhouette mid-flight with motion lines, overlaid with force arrows and equations."
comments: true
mathjax: true
---

![Superpowers collide with real-world physics.](/assets/images/the-physics-of-superheroes.png)
*Superpowers collide with real-world physics.*

<!-- Image Description: A superhero silhouette mid-flight with motion lines, overlaid with force arrows and equations. -->

## Powers meet real-world forces

*By Peter Teoh, Science Writer*

**Challenge to the reader:** A 70 kg hero runs at Mach 1 ($343\ \mathrm{m/s}$). (1) Compute their kinetic energy and convert it to grams of TNT, given that 1 gram of TNT releases $4184\ \mathrm{J}$. (2) Now estimate the drag force on their body using $F_D = \tfrac{1}{2}\rho v^{2} C_d A$, with $\rho = 1.2\ \mathrm{kg/m^3}$, $C_d \approx 1.0$, and a frontal area $A \approx 0.7\ \mathrm{m^2}$. (3) Explain why both answers mean the hero needs more than super speed — they need super survivability.

Superhero feats are thrilling precisely because physics forbids them. Run at the speed of sound and the air hits you like a brick wall; catch a falling friend out of the sky and you break their ribs with kindness; lift a bus and the street beneath your feet gives way first. Physics does not kill the fun — it reveals the hidden price tag on every power.

---

## 1. The core idea: conservation laws do not take days off

Every superpower must obey the same bookkeeping that governs everything else: **energy is conserved, momentum is conserved, forces come in pairs, and materials break**. A superhero can be strong, fast, or invulnerable — but the ground they stand on, the air they run through, and the people they save are ordinary. The real drama of superhero physics is that *the power is never the problem; the environment is*.

This post runs the numbers on four classic powers: strength, speed, jumping, and flight. The calculations are first-year physics; the results are a body count.

---

## 2. Super strength: the ground breaks before you do

Suppose our hero lifts a school bus — say $10{,}000\ \mathrm{kg}$, a force of

$$
F = mg = 10{,}000 \times 9.8 \approx 98\ \mathrm{kN}.
$$

The weight transfers to the ground through the hero's two feet. A foot is about $0.025\ \mathrm{m^2}$, so the pressure underfoot is

$$
P = \frac{F}{A} = \frac{98{,}000}{2 \times 0.025} \approx 2\ \mathrm{MPa}.
$$

Typical soil fails at a few hundred kPa and concrete at around 2–5 MPa. The hero punches through the pavement like a tent peg. The fix used by comics — "super strength plus normal ground" — is physically inconsistent: every force the hero exerts on the bus is matched by the ground pushing back on the hero, and *ordinary ground cannot push back that hard*. Real-world machinery solves this with outriggers, tracks, and massive foundations. A superhero would need to hover.

**Challenge (mid-post):** How much would the pressure underfoot drop if the hero's feet were the size of snowshoes ($0.1\ \mathrm{m^2}$ each)? Would it now be safe to lift the bus on asphalt? Name one real-world machine that solves this problem the way your calculation suggests.

---

## 3. Super speed: the air becomes a wall — and a furnace

At superhuman speed, air stops being invisible and becomes a physical obstacle. The drag force grows with the *square* of the speed:

$$
F_D = \tfrac{1}{2}\,\rho\, v^{2}\, C_d\, A.
$$

At Mach 1 ($v = 343\ \mathrm{m/s}$), our 70 kg hero feels

$$
F_D = \tfrac{1}{2} \times 1.2 \times 343^{2} \times 1.0 \times 0.7 \approx 49\ \mathrm{kN}
$$

— the weight of five tonnes pressing backward on every square meter of frontal area. But drag is not the worst of it. **Compressional heating** raises the air temperature enormously at supersonic speeds: at Mach 2, the skin of an aircraft can reach several hundred degrees Celsius; at Mach 5, thousands. A hero running at Mach 10 through sea-level air would be surrounded by plasma, converting their own kinetic energy into a fireball:

$$
E_k = \tfrac{1}{2} m v^{2} = \tfrac{1}{2} \times 70 \times 343^{2} \approx 4.1\ \mathrm{MJ} \approx 1\ \mathrm{kg}\ \text{of TNT}.
$$

That is the energy of a car bomb — carried as *heat of motion* by one running person. The Flash's costume is the least unrealistic thing about him; the real problem is that every stride through real air would detonate the street.

---

## 4. The leap: how high could you really jump?

A leap converts crouched leg force into vertical speed, then trades speed for height:

$$
v = \sqrt{2gh}.
$$

To clear a 100 m building, the hero needs

$$
v = \sqrt{2 \times 9.8 \times 100} \approx 44\ \mathrm{m/s}
$$

of upward speed. That speed must be built over the crouch distance — call it $0.5\ \mathrm{m}$. The required acceleration is

$$
a = \frac{v^{2}}{2d} = \frac{44^{2}}{2 \times 0.5} \approx 1960\ \mathrm{m/s^{2}} \approx 200\,g.
$$

Two hundred g's. Fighter pilots black out at 9; a human body is structurally ruined long before 50. Note what this means: *jumping is strength, and strength is acceleration*. The same $200\,g$ would be required of the ground holding the hero up — back to Section 2's broken pavement.

**Challenge (mid-post):** An Olympic high-jumper clears $2.4\ \mathrm{m}$ using a crouch of $0.3\ \mathrm{m}$. Work backward to compute their takeoff speed, then their leg acceleration in g's. Why is the jump so much gentler than the superhero's — and which single number would have to change for humans to jump 100 m?

---

## 5. Flight: the power bill of hovering

Superman hovering is a physics problem with a number attached. To hover, the hero must push air downward; the reaction force equals the weight:

$$
F = \dot{m} v = mg,
$$

where $\dot{m}$ is the mass of air thrown downward per second and $v$ its speed. The mechanical power required is

$$
P = \tfrac{1}{2} \dot{m} v^{2} = \tfrac{1}{2} mg v.
$$

Take a modest downward jet speed of $30\ \mathrm{m/s}$: 

$$
P = \tfrac{1}{2} \times 70 \times 9.8 \times 30 \approx 10\ \mathrm{kW}.
$$

Ten kilowatts just to *stand still in the air* — the continuous output of a small motorcycle engine, delivered by a body with no visible air intakes, exhaust, or wings. Fly forward at $100\ \mathrm{m/s}$, and the drag term from Section 3 adds another $50\ \mathrm{kW}$ or so. Flight without thrust — "superheroes just float" — requires not new physics but *new biology*: a source of tens of kilowatts inside a 70 kg body would require metabolizing food at roughly a hundred times the human rate, which is its own kind of superpower (see the final challenge).

---

## 6. The catch: why saving a falling friend kills them

The most beloved superhero moment is also the most lethal: catching a falling person just before they hit the ground. The problem is **impulse** — the change in momentum:

$$
F = \frac{\Delta p}{\Delta t}.
$$

A 70 kg person at terminal velocity ($v \approx 53\ \mathrm{m/s}$) carries

$$
\Delta p = 70 \times 53 \approx 3710\ \mathrm{kg\,m/s}.
$$

Catch them gently, decelerating over 1 meter: the stopping force is

$$
F = \frac{\Delta p}{\Delta t} \approx 7\ \mathrm{kN}
$$

— survivable. But catch them "at the last instant," decelerating over 10 cm, and the force multiplies by ten: $70\ \mathrm{kN}$, well over a hundred g's, and the body tears apart *at the point of contact* — the arms, the ribs, everything the hero touches. The physics verdict is merciless: **a person falling at terminal velocity is already dead unless decelerated over the same distance they fell**. The hero who catches them at street level has simply moved the impact from the pavement into the rescue itself. (This is why safety nets, airbags, and stunt pads work — they extend the deceleration distance — and why "catching someone" cannot.)

---

## 7. The power bill at a glance

| Feat | Required physics | The hidden cost | Verdict |
|---|---|---|---|
| Lift a 10-ton bus | $98\ \mathrm{kN}$ through the feet | ground pressure $\approx 2\ \mathrm{MPa}$ | pavement fails first |
| Run at Mach 1 | $E_k \approx 4.1\ \mathrm{MJ}$ | drag $49\ \mathrm{kN}$; shock heating | fireball at Mach 10 |
| Leap 100 m | takeoff $44\ \mathrm{m/s}$ | $200\,g$ leg acceleration | body ruined |
| Hover | $\approx 10\ \mathrm{kW}$ | no air intakes, no exhaust | violates metabolism |
| Catch a faller | impulse $3710\ \mathrm{kg\,m/s}$ | $70\ \mathrm{kN}$ over 10 cm | the rescue kills them |

---

## 8. Deeper significance: physics is the final editor

Why bother? Because the exercise is a lesson in *thinking with physics*: every power is a budget. Strength is acceleration; speed is heat; flight is power; rescue is impulse. The four calculations are the same four equations — Newton's second law, energy, momentum, and pressure — wearing costumes.

And there is a real-world payoff: these are exactly the budgets engineers face. Lifting a bus is why cranes have outriggers; catching a faller is why airbags exist; running at speed is why supersonic aircraft need thermal protection. The line between "superhero physics" and "safety engineering" is only the size of the numbers.

**Final challenge:** (a) Compute the power Superman would need to hover if he threw air downward at $100\ \mathrm{m/s}$ instead of $30\ \mathrm{m/s}$, and explain why throwing air *faster* is more efficient or less efficient (hint: re-derive the power from Section 5). (b) The hero catches the falling friend by matching speed first, flying downward alongside them, *then* decelerating together over 10 m. Recompute the force — why does this fix the rescue? (c) A "super strong" hero punches a concrete wall and stops their fist in 1 cm. If the fist moves at $20\ \mathrm{m/s}$ and the arm's effective mass is 5 kg, compute the impact force — and name the real-world safety feature that works on the same principle in reverse.

---

## References

- **Kakalios, J.** (2005). *The Physics of Superheroes*, Gotham Books. [G-force](https://en.wikipedia.org/wiki/G-force)
- **Drag (physics).** [Drag (physics) - Wikipedia](https://en.wikipedia.org/wiki/Drag_(physics))
- **Impulse (physics).** [Impulse (physics) - Wikipedia](https://en.wikipedia.org/wiki/Impulse_(physics))
- **Terminal velocity.** [Terminal velocity - Wikipedia](https://en.wikipedia.org/wiki/Terminal_velocity)
