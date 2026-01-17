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
Show that √2 + √3 is a quadratic irrational.

**Solution Sketch:**
Let x = √2 + √3.
Then:

x² = (√2 + √3)² = 2 + 2√6 + 3 = 5 + 2√6

So,

x² − 5 = 2√6  ⟹  (x² − 5)² = 24

x⁴ − 10x² + 25 = 24  ⟹  x⁴ − 10x² + 1 = 0

Thus, x satisfies a degree-4 polynomial—but we can show it's actually **quadratic over a quadratic field**. However, note that √2 + √3 is **not** a quadratic irrational—it's actually an algebraic number of degree 4!

✅ **Correction**: A true **quadratic irrational** must satisfy a **quadratic** equation with rational (or integer) coefficients. So this example is **not** a quadratic irrational! Good reminder: not all sums of square roots are quadratic irrationals.

A correct example:
**Show that (1 + √5)/2 is a quadratic irrational.**

**Solution:**
Let x = (1 + √5)/2. Then:

2x = 1 + √5  ⟹  2x − 1 = √5

Square both sides:

(2x − 1)² = 5  ⟹  4x² − 4x + 1 = 5  ⟹  4x² − 4x − 4 = 0

Divide by 4:

x² − x − 1 = 0

So it satisfies a quadratic with integer coefficients → **quadratic irrational**.

---

### **Example 2: Continued Fraction Expansion**
**Problem:**
Find the simple continued fraction expansion of √7.

**Solution Sketch:**
Use the standard algorithm for square roots:

- a₀ = floor(√7) = 2
- Set x₀ = √7
- Recursively define: x₍ₙ₊₁₎ = 1/(xₙ − aₙ), and a₍ₙ₊₁₎ = floor(x₍ₙ₊₁₎)

Carrying this out:
- x₀ = √7, a₀ = 2
- x₁ = 1/(√7 − 2) = (√7 + 2)/3, a₁ = 1
- x₂ = 1/((√7+2)/3 − 1) = 3/(√7 − 1) = 3(√7+1)/6 = (√7+1)/2, a₂ = 1
- Continue... eventually you get periodicity.

**Answer:**

√7 = [2; 1, 1, 1, 4, 1, 1, 1, 4, ...] (the part 1, 1, 1, 4 repeats forever)

This illustrates a key fact: **the continued fraction of a quadratic irrational is eventually periodic** (Lagrange's theorem).

---

### **Example 3: Solve a Pell Equation**
**Problem:**
Find the fundamental solution to the Pell equation:

x² − 13y² = 1

**Solution Idea:**
The solutions are related to the continued fraction of √13.

- √13 = [3; 1, 1, 1, 1, 6, 1, 1, 1, 1, 6, ...] (period length = 5, odd)
- The fundamental solution comes from the convergent just before the end of the first period.

Compute convergents:
- [3] = 3/1
- [3; 1] = 4/1
- [3; 1, 1] = 7/2
- [3; 1, 1, 1] = 11/3
- [3; 1, 1, 1, 1] = 18/5
- [3; 1, 1, 1, 1, 6] = 119/33

Since period is odd, the minimal solution is from the **double period**, or check:

18² − 13 × 5² = 324 − 325 = −1 (so this solves x² − 13y² = −1)

Then square it (in the ring ℤ[√13]):

(18 + 5√13)² = 649 + 180√13

Check: 649² − 13 × 180² = 1 ✓

✅ **Fundamental solution:** (x, y) = (649, 180)

---

### **Example 4: Prove a Number is a Quadratic Irrational**
**Problem:**
Prove that any real number with an eventually periodic continued fraction is a quadratic irrational.

**Approach:**
This is **Lagrange's Theorem**. Sketch:

- Let x = [a₀; a₁, ..., aₖ, b₁, b₂, ..., bₘ, b₁, b₂, ..., bₘ, ...] where the b's repeat
- Let y = [b₁; b₂, ..., bₘ, y] (y defined recursively)
- This gives a recursive relation: y = (Ay + B)/(Cy + D) for integers A, B, C, D
- Rearranged: Cy² + (D − A)y − B = 0 → quadratic equation
- So y is a quadratic irrational, and since x is obtained from y by a finite number of linear fractional transformations (with integer coefficients), x is also a quadratic irrational.

---

### **Example 5: Conjugate of a Quadratic Irrational**
**Problem:**
Let α = (3 + √10)/2. Find its conjugate and compute α + ᾱ and α × ᾱ.

**Solution:**
Conjugate: replace √10 with −√10:

ᾱ = (3 − √10)/2

Then:

α + ᾱ = (3 + √10 + 3 − √10)/2 = 6/2 = 3

α × ᾱ = ((3 + √10)/2) × ((3 − √10)/2) = (9 − 10)/4 = −1/4

So the minimal polynomial is:

x² − 3x − 1/4 = 0, or multiply by 4: 4x² − 12x − 1 = 0

---

### Summary of Key Ideas:
- A **quadratic irrational** is a real number α not in ℚ such that ax² + bx + c = 0 for integers a, b, c with a ≠ 0.
- They have **eventually periodic continued fractions**.
- They come in **conjugate pairs**.
- They are central to solving **Pell's equation** x² − Dy² = 1.

---

### Side Notes

- *The Golden Ratio* φ = (1 + √5)/2 is the most famous quadratic irrational, appearing in art, nature, and architecture.
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

