# ESE-447-Robotics-Laboratory
Code for ESE 447 Robotics Laboratory: Code is written in MATLAB and Simulink.

## Table of Contents
* [Purpose](#Purpose)
* [Transformation Matrices](#Transformation-Matrices)
* [Hamiltonian Mechanics](#Hamiltonian-Mechanics)
* [Controllers](#Controllers)
* [Robotic Simulation](#Robotic-Simulation)
* [Other](#Other)

## Purpose
The purpose of the code in this repository is to create a model of a 2 rotational joint, single pendulum robot and implement the controllers to the actual physical system.

## Transformation Matrices
The following files are related to the transformation matrices of the robot.
* TRANS0_1.m
* TRANS0_2.m
* TRANS1_2.m
* task7.m

TRANS0_1.m contains the transformation matrix that relates the coordinates of the base of the robot to the first joint of the robot. TRANS0_2.m contains the transformation matrix that relates the coordinates of the base of the robot to the end tip of the robot. TRANS1_2.m contains the transformation matrix that relates the coordinates of the first joint of the robot to the end tip of the robot. task7.m simulates the robot using the transformations.

## Hamiltonian Mechanics
The following files are used to solved for the physical parameters of the robot using hamiltonian mechanics.
* hamiltonian.m
* hamtest-Copy(2).m
* hamtestSim.m
* ActualHamMoveRob.slx
* hamiltonian.slx

hamiltonian.m and hamiltonian.slx are used collect state data from a model of the robot and the actual physical system as the robot is rapidly moving around. hamtestSim.m uses the state data collected from the model and solves for the physical parameters of the robot. hamtest-Copy(2).m uses the state data collected from the physical system and solves for the physical parameters of the robot. ActualHamMoveRob.slx is a simulation of the robot using the calculated physical parameters.

## Controllers
The following files are used to create controllers to balance the pendulum of the robot.
* Ksolver.m
* stateBackup.m
* symbolicController.m
* BalancedMatlab.slx

stateBackup.m creates a state machine that determines which controller should be used depending on the angle of the pendulum. symbolicController.m contains symbolic MATLAB code of the state space of the plant and state space of the controller. Ksolver.m contains code for a state feedback controller created through pole placement. BalancedMatlab.slx simulates the model of the robot with the controller.

## Robotic Simulation
The following files are the complete files for the model of the pendulum robot and physical system.
* balancesim.slx (model system)
* balanceActual.slx (physical system)

## Other
Other files that relate to the robot can be found here.
* lab3.m
* Lab4.slx
