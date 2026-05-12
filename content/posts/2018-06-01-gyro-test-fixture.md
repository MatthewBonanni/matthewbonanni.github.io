---
title: "Gyroscope Test Fixture"
date: 2018-06-01
tags: ["mechanical design", "undergraduate"]
cover:
  image: /images/posts/gyro-test-fixture/gyro-test-fixture.png
  headerImage: /images/posts/gyro-test-fixture/aiaa-logo.png
group: "Undergraduate Work"
---

## NU AIAA Project Karman

[Project Site](https://web.northeastern.edu/aiaa/project-karman/)

Project Karman is a division of Northeastern University AIAA that is actively developing a rocket designed to breach the Von Karman Line, which defines space.

One critical component of the rocket's avionics system is its electronic gyroscope. While the rocket is in flight, the gyroscope collects data to ensure it is oriented properly. If the rocket veers off course, the on-board avionics system will prevent the second stage from firing, thereby minimizing the rocket's lateral travel.

My first task on this team was to develop a test fixture ensuring the gyroscope will work properly while the rocket is rapidly rotating in flight.

## Design

The fixture was designed to mimic a three-axis gimbal. A motor turns a central axle to which the gyroscope is mounted, rotating it at approximately 10 Hz. This unit is allowed to roll and pitch freely by the gimbals.

As the avionics are spun, the central unit is tilted by hand. Encoders measure the roll and pitch angles, and this data is compared to the gyroscope's measurements to ensure it is functioning properly.
