---
title: "Pareto Optimization Software"
date: 2017-06-01
tags: ["software", "undergraduate"]
cover:
  image: /images/posts/pareto-optimization/pareto.png
group: "Undergraduate Work"
---

[GitHub Repo](https://github.com/MatthewBonanni/Optimization-Model)

## Overview

I created software for addressing Pareto optimization challenges using MATLAB, complete with a sample mathematical model.

Pareto optimization problems are those in which there is more than one objective for optimization. In complex scenarios, enhancing one objective often requires compromise on others, creating an optimal surface rather than a single solution point. Any point on the surface is an optimal solution to the problem. When relative weights are established, each point receives a weighted score to identify the singular optimal solution.

The sample model features four independent parameters and three optimization objectives.

## Brute Force

This method examines all parameter combinations to determine output objectives. Normalization scales all values between 0 and 1 by dividing the objective values at each point by this maximum. The weighted score of each point is represented by its color. 3 of the parameters are represented as physical axes, while the fourth is varied over time.

![Brute Force Optimization](/images/posts/pareto-optimization/optimization.gif)
*Visualization of Pareto Optimization*

## Gradient Descent

This more efficient approach uses a weighted scoring system. The algorithm starts at a given seed point and initially determines Utopia and Nadir points through independent objective optimization.

At this point, it runs the mathematical model over all surrounding points by incrementing and decrementing each parameter. The cursor moves to the point with the highest score.

The method repeats until reaching peak performance, with multiple random seed points tested in an effort to escape false peaks (local maxima).

![Gradient Ascent Surface](/images/posts/pareto-optimization/gradient-ascent-surface.png)
*Gradient Descent Visualization*

![Gradient Ascent Contour](/images/posts/pareto-optimization/gradient-ascent-contour.png)
*Gradient Descent - Top View*

## Results

Both techniques were successfully demonstrated. The brute force approach proved slower but reliable, while gradient descent operated faster but showed difficulty in converging on a singular solution.

This was my first software development project of this complexity and scale, and it significantly enhanced my expertise in mathematical modeling and optimization methodologies, skills later applied to mechanical design challenges.
