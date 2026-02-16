---
title: "Math Behind Video Game Physics"
date: 2026-02-01 09:00:00 +08:00
categories: mathematics
tags: ["vectors", "matrices", "collision", "simulation", "games"]
image_name: math-behind-video-game-physics.jpg
image_description: "A stylized game scene with vector arrows on a jumping character and collision boxes around platforms."
comments: true
---

![Game physics turns math into motion.](/assets/images/math-behind-video-game-physics.jpg)
*Game physics turns math into motion.*

<!-- Image Description: A stylized game scene with vector arrows on a jumping character and collision boxes around platforms. -->

## Making movement feel real

*By Peter Teoh, Science Writer*

Game physics feels natural because it runs on vectors, matrices, and numerical integration. The goal is not perfect reality, but a stable and fun illusion.

---

### **Explainer: From vectors to collisions**
**Focus:**
Position, velocity, and acceleration are all vectors, updated each frame using small time steps. Rotations use matrices or quaternions to avoid gimbal lock.

Collisions are detected with bounding boxes or spheres for speed, then resolved by applying impulses that mimic bounce and friction. Small errors add up, so engines use constraints and damping to keep motion believable.

---

### Summary of Key Ideas:
- Physics engines update motion in tiny time steps.
- Rotations rely on matrices or quaternions.
- Collision response uses impulses and constraints.

---

### Side Notes
- Many games use simplified physics for performance.
- Stability matters more than perfect accuracy.

---

### Trending Sidebar
- Real-time rigid body simulation.
- Soft-body physics in modern engines.

---

### Reference Links
- [Physics engine - Wikipedia](https://en.wikipedia.org/wiki/Physics_engine)
- [Rigid body dynamics - Wikipedia](https://en.wikipedia.org/wiki/Rigid_body_dynamics)
