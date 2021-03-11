# ESE-447-Robotics-Laboratory
Code for ESE 447 Robotics Laboratory. Code is written in MATLAB and Simulink.

## Table of Contents
* [Purpose](#Purpose)
* [Transformation Matrices](#Transformation-Matrices)
* [Hamiltonian Mechanics](#Hamiltonian-Mechanics)
* [Controllers](#Controllers)
* [Robotic Simulation](#Robotic-Simulation)
* [Other](#Other)

## Purpose
The purpose of the code in this repository is to create a model of a 2 rotational joint, single pendulum robot and implement the model to the actual physical system.

## Transformation Matrices
The following files are related to the transformation matrices of the robot.
* TRANS0_1.m
* TRANS0_2.m
* TRANS1_2.m
* task7.m

TRANS0_1.m contains the transformation matrix that relates the coordinates of the base of the robot to the first joint of the robot. TRANS0_2.m contains the transformation matrix that relates the coordinates of the base of the robot to the end tip of the robot.
TRANS1_2.m contains the transformation matrix that relates the coordinates of the first joint of the robot to the end tip of the robot. task7.m simulates the robot using the transformations.

## Hamiltonian Mechanics
The following files are used to solved for the physical parameters of the robot using hamiltonian mechanics
