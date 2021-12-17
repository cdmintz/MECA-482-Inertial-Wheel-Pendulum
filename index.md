# Inertial Wheel Pendulum (IWP)
#### Dylan Palmer, Megan McKinney, Chris Mintz, Cole Brenner, 2021 Fall, MECA 482
-----------------------------------------------------------------------------------------
## 1. Introduction

The inertia wheel pendulum(IWP) was examined for this report. An IWP is a mechanism that utilizes an actuator to rotate a reaction wheel to stabilize a pendulum in an upright position. This is an electromechanical system that uses the wheel as a mass that creates a torque and causes a pendulum to react by rotating. The IWP uses this reaction to balance the system in a vertical position. This report will focus on designing an inertia wheel pendulum system to be used as a desktop toy. This will be achieved by following the design requirements shown below.

<p align = "center">
  <img src = "Images/Capabilities Database.PNG" height = "360px" style="margin:10px 10px">
</p>

#### Table of Contents
- [1. Introduction](#1-Introduction)
- [2. Control_System_Design](#2-Control_System_Design)
- [3. Mathmatical_Modeling](#3-Mathmatical_Modeling)
- [4. Simulation](#4-Simulation)
- [5. Refrences](#5-Refrences)
-----------------------------------------------------------------------------------------
## 2. Control_System_Design

Operational viewpoint diagrams are vital to the design of a system. These diagrams display how all the physical components of the system are put together. This allows us to view exactly where sensors, motors, and other components can be placed to be able to drive the system. Below is the operational viewpoint diagram of this inertia wheel pendulum system. Here it is shown that two rotational sensors are needed, one to keep track of the arm’s position, and one that is used to gain rotational information of the reaction wheel. Both these are necessary, as the data on the arm is needed to know which position it is in, and the data on the reaction wheel is needed to know how much of a reaction force is being imparted by the motor. A counter weight was also deemed necessary. As this is a desk toy, it cannot be rigidly attached by the base, so a counterweight will provide the necessary counterbalance to keep the system upright. This counterweight could be composed of the controller, HMI, and power source, as well as any necessary extra added weights.

<p align = "center">
  <img src = "Images/Mech_482_Diagrams-Operational Viewpoint Diagram.drawio.png" style="margin:10px 10px">
</p>

<p align = "center">
  <img src = "Images/Mech_482_Diagrams-Logical Functional Diagram.drawio.png" height = "360px" style="margin:10px 10px">
</p>

-----------------------------------------------------------------------------------------
## 3. Mathmatical_Modeling

Mathmatical Model Construction
  use HW 3 & cite the paper

-----------------------------------------------------------------------------------------
## 4. Simulation

Matlab & hopefully CoppeliaSim walkthrough

-----------------------------------------------------------------------------------------
## 5. Refrences
 [1] Hernandez-Guzman, V. M., & Silva-Ortizoga, R. (2019). Chapter 16. In Automatic Control with Experiments (pp. 921–950). essay, Springer.
