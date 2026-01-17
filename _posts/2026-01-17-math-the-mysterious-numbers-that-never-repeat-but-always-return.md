---
title: "The mysterious numbers that never repeat but always return"
date: 2026-01-17 16:06:20 +08:00
categories: [Mathematics / Number Theory]
tags: ["quadratic irrationals", "continued fractions", "Pell equation", "teen science", "number theory"]
image_name: quadratic_irrational_golden_spiral.jpg
image_description: "A mesmerizing golden spiral overlaid with mathematical equations, showing the connection between quadratic irrationals like the golden ratio and natural patterns. Floating numbers and square root symbols spiral inward, while ancient-looking mathematical manuscripts appear faintly in the background."
comments: true
---


![Quadratic irrationals: The mysterious numbers behind infinite patterns.](/assets/images/quadratic_irrational_golden_spiral.jpg)
*Quadratic irrationals: The mysterious numbers behind infinite patterns.*

<!-- Image Description: A mesmerizing golden spiral overlaid with mathematical equations, showing the connection between quadratic irrationals like the golden ratio and natural patterns. Floating numbers and square root symbols spiral inward, while ancient-looking mathematical manuscripts appear faintly in the background. -->

## Exploring the strange world of quadratic irrationals

*By Peter Teoh, Science Writer*

Quadratic irrationals are irrational numbers that are roots of quadratic equations with integer coefficients. They often appear in number theory, continued fractions, and Diophantine approximation. Below are several **example problems** involving quadratic irrationals, ranging from basic to more advanced.

---

### **Example 1: Identify a Quadratic Irrational**
**Problem:**
Show that \( \sqrt{2} + \sqrt{3} \) is a quadratic irrational.

**Solution Sketch:**
Let \( x = \sqrt{2} + \sqrt{3} \).
Then:
\[
x^2 = (\sqrt{2} + \sqrt{3})^2 = 2 + 2\sqrt{6} + 3 = 5 + 2\sqrt{6}
\]
So,
\[
x^2 - 5 = 2\sqrt{6} \Rightarrow (x^2 - 5)^2 = 24
\]
\[
x^4 - 10x^2 + 25 = 24 \Rightarrow x^4 - 10x^2 + 1 = 0
\]
Thus, \( x \) satisfies a degree-4 polynomial—but we can show it's actually **quadratic over a quadratic field**. However, note that \( \sqrt{2} + \sqrt{3} \) is **not** a quadratic irrational—it's actually an algebraic number of degree 4!

✅ **Correction**: A true **quadratic irrational** must satisfy a **quadratic** equation with rational (or integer) coefficients. So this example is **not** a quadratic irrational! Good reminder: not all sums of square roots are quadratic irrationals.

A correct example:
**Show that \( \frac{1 + \sqrt{5}}{2} \) is a quadratic irrational.**

**Solution:**
Let \( x = \frac{1 + \sqrt{5}}{2} \). Then:
\[
2x = 1 + \sqrt{5} \Rightarrow 2x - 1 = \sqrt{5}
\]
Square both sides:
\[
(2x - 1)^2 = 5 \Rightarrow 4x^2 - 4x + 1 = 5 \Rightarrow 4x^2 - 4x - 4 = 0
\]
Divide by 4:
\[
x^2 - x - 1 = 0
\]
So it satisfies a quadratic with integer coefficients → **quadratic irrational**.

---

### **Example 2: Continued Fraction Expansion**
**Problem:**
Find the simple continued fraction expansion of \( \sqrt{7} \).

**Solution Sketch:**
Use the standard algorithm for square roots:

- \( a_0 = \lfloor \sqrt{7} \rfloor = 2 \)
- Set \( x_0 = \sqrt{7} \)
- Recursively define:
  \[
  x_{n+1} = \frac{1}{x_n - a_n}, \quad a_{n+1} = \lfloor x_{n+1} \rfloor
  \]

Carrying this out:
- \( x_0 = \sqrt{7} \), \( a_0 = 2 \)
- \( x_1 = \frac{1}{\sqrt{7} - 2} = \frac{\sqrt{7} + 2}{3} \), \( a_1 = 1 \)
- \( x_2 = \frac{1}{\frac{\sqrt{7}+2}{3} - 1} = \frac{3}{\sqrt{7} - 1} = \frac{3(\sqrt{7}+1)}{6} = \frac{\sqrt{7}+1}{2} \), \( a_2 = 1 \)
- Continue... eventually you get periodicity.

**Answer:**
\[
\sqrt{7} = [2; \overline{1, 1, 1, 4}]
\]
This illustrates a key fact: **the continued fraction of a quadratic irrational is eventually periodic** (Lagrange's theorem).

---

### **Example 3: Solve a Pell Equation**
**Problem:**
Find the fundamental solution to the Pell equation:
\[
x^2 - 13y^2 = 1
\]

**Solution Idea:**
The solutions are related to the continued fraction of \( \sqrt{13} \).

- \( \sqrt{13} = [3; \overline{1, 1, 1, 1, 6}] \) (period length = 5, odd)
- The fundamental solution comes from the convergent just before the end of the first period.

Compute convergents:
- \( [3] = 3/1 \)
- \( [3;1] = 4/1 \)
- \( [3;1,1] = 7/2 \)
- \( [3;1,1,1] = 11/3 \)
- \( [3;1,1,1,1] = 18/5 \)
- \( [3;1,1,1,1,6] = 119/33 \)

Since period is odd, the minimal solution is from the **double period**, or check:
\[
18^2 - 13 \cdot 5^2 = 324 - 325 = -1 \quad \text{(so solves } x^2 - 13y^2 = -1\text{)}
\]
Then square it (in the ring \( \mathbb{Z}[\sqrt{13}] \)):
\[
(18 + 5\sqrt{13})^2 = 649 + 180\sqrt{13}
\]
Check: \( 649^2 - 13 \cdot 180^2 = 1 \)

✅ **Fundamental solution:** \( (x, y) = (649, 180) \)

---

### **Example 4: Prove a Number is a Quadratic Irrational**
**Problem:**
Prove that any real number with an eventually periodic continued fraction is a quadratic irrational.

**Approach:**
This is **Lagrange's Theorem**. Sketch:

- Let \( x = [a_0; a_1, ..., a_k, \overline{b_1, ..., b_m}] \)
- Let \( y = [\overline{b_1, ..., b_m}] \), so \( y \) satisfies \( y = [b_1; b_2, ..., b_m, y] \)
- This gives a recursive relation: \( y = \frac{Ay + B}{Cy + D} \) for integers \( A,B,C,D \)
- Rearranged: \( Cy^2 + (D - A)y - B = 0 \) → quadratic equation
- So \( y \) is a quadratic irrational, and since \( x \) is obtained from \( y \) by a finite number of linear fractional transformations (with integer coefficients), \( x \) is also a quadratic irrational.

---

### **Example 5: Conjugate of a Quadratic Irrational**
**Problem:**
Let \( \alpha = \frac{3 + \sqrt{10}}{2} \). Find its conjugate and compute \( \alpha + \overline{\alpha} \) and \( \alpha \cdot \overline{\alpha} \).

**Solution:**
Conjugate: replace \( \sqrt{10} \) with \( -\sqrt{10} \):
\[
\overline{\alpha} = \frac{3 - \sqrt{10}}{2}
\]
Then:
\[
\alpha + \overline{\alpha} = \frac{3 + \sqrt{10} + 3 - \sqrt{10}}{2} = \frac{6}{2} = 3
\]
\[
\alpha \cdot \overline{\alpha} = \left( \frac{3 + \sqrt{10}}{2} \right)\left( \frac{3 - \sqrt{10}}{2} \right) = \frac{9 - 10}{4} = \frac{-1}{4}
\]
So the minimal polynomial is:
\[
x^2 - 3x - \frac{1}{4} = 0 \quad \text{or multiply by 4: } 4x^2 - 12x - 1 = 0
\]

---

### Summary of Key Ideas:
- A **quadratic irrational** is a real number \( \alpha \notin \mathbb{Q} \) such that \( a\alpha^2 + b\alpha + c = 0 \) for integers \( a,b,c \), \( a \ne 0 \).
- They have **eventually periodic continued fractions**.
- They come in **conjugate pairs**.
- They are central to solving **Pell's equation** \( x^2 - Dy^2 = 1 \).

---

### Side Notes

- *The Golden Ratio* \( \phi = \frac{1 + \sqrt{5}}{2} \) is the most famous quadratic irrational, appearing in art, nature, and architecture.
- *Lagrange's Theorem* connects quadratic irrationals to periodic continued fractions — a beautiful bridge between algebra and analysis.
- *Pell equations* have fascinated mathematicians since ancient India and Greece, with applications in cryptography today.
- Quadratic irrationals are **dense** on the real line — between any two rational numbers, you can find infinitely many of them!

---

### Trending Sidebar

- **Continued Fractions:** Explore how infinite fractions can represent irrational numbers.
- **The Golden Ratio in Nature:** From sunflower seeds to galaxy spirals.
- **Pell Equation Solvers:** Online tools that compute solutions using continued fractions.
- **Algebraic vs Transcendental:** Why π and e are fundamentally different from √2.

---

### Reference Links

- [Quadratic Irrational - Wikipedia](https://en.wikipedia.org/wiki/Quadratic_irrational_number)
- [Continued Fractions - Wolfram MathWorld](https://mathworld.wolfram.com/ContinuedFraction.html)
- [Pell's Equation - Brilliant.org](https://brilliant.org/wiki/pells-equation/)
- [Lagrange's Theorem on Continued Fractions](https://en.wikipedia.org/wiki/Periodic_continued_fraction)

