---
title: "Kinematic Modeling of Constrained Robot Arms"
date: 2019-03-01
tags: ["capstone", "software", "undergraduate"]
cover:
  image: /images/posts/gamut-modeling/glovebox-arms.png
group: "Undergraduate Work"
---

[Capstone Project](/posts/2019-05-01-nasa-valkyrie-glovebox-forearms/) · [GitHub Repo](https://github.com/MatthewBonanni/Glovebox-Forearm-Kinematics)

## Overview

This software models and optimizes the accessible volume, or "gamut," of robotic arms when constrained by a glovebox.

I created this tool for our capstone design project involving a glovebox-optimized robotic forearm for NASA's Valkyrie R5 robot. Section 6 of the project's final report contains details on the software's design and implementation.

Robotic arms are modeled using Denavit-Hartenberg parameters, and represented in MATLAB as rigid body trees. This approach enables computation of transformation matrices between joints at specified angles. The software generates point clouds by iterating through joint position combinations and filtering for collision-free endpoints. Convex hull computation permits design comparisons.

An RPR (Roll Pitch Roll) configuration was optimized using brute force methodology. The software adjusts link lengths at set intervals to determine gamut at each iteration. This three-iteration process progressively narrows the parameter space and increases resolution around optimal points for efficient, accurate solutions.

![Gamut Visualization of RPR Robotic Forearm](/images/posts/gamut-modeling/gamut-rpr.png)
*Gamut Visualization of RPR Robotic Forearm*
