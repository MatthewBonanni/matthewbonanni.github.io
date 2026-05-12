---
title: "Dynamic Model of a Gantry System"
date: 2018-09-01
tags: ["software", "undergraduate"]
cover:
  image: /images/posts/gantry-model/cart.jpg
group: "Undergraduate Work"
---

[Full Paper](/files/me3455_gantry_model_report.pdf)

## Overview

Implemented in Simulink, this software models the 2 degree of freedom gantry system shown below. Current is applied to a motor which actuates the cart, and the resulting displacements of the cart and pendulum are measured.

Comparison with experimental data demonstrated this model's accuracy, resulting in a mean cart position error of 0.89cm and pendulum angle error of 0.0217 rad, for a driving frequency of π Hz.

The accuracy of the model degenerates, however, with increasing driving frequency due to accumulated frictional losses (bearing friction and drag).

This model was developed in satisfaction of the requirements of ME3455: Dynamics and Vibrations.

![Comparison of simulated and experimental response to 0.5 Hz driving frequency](/images/posts/gantry-model/comparison.png)
*Comparison of simulated and experimental response to 0.5 Hz driving frequency*
