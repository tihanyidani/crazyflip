# crazyflip
This project aims to reproduce the results of the following paper: [A simple learning strategy for high-speed quadrocopter multi-flips](https://ieeexplore.ieee.org/abstract/document/5509452).

My goal is to use learning-based control methods to perform multi-flips using a small indoor drone. To achieve this, I split the project into two steps: Simulation in [Webots](https://cyberbotics.com/), and Drone flight using a [Crazyflie drone](https://www.bitcraze.io/).

# Overview
The method described in the paper reduces the complexity of the multi-flip maneuver to the optimization problem of a small number of parameters in the following way. We assume that a flip can be broken down into the following 5 stages: 

1) Acceleration - moving upwards with increasing velocity,
2) Starting rotation - high angular acceleration
3) Coast - letting the drone rotate,
4) Stoping rotation - angular deceleration
5) Recovery - return to level flight.

Each stage can be described by a small number of parameters - acceleration, angular acceleration, and duration. These parameters serve as commands for the drone's lower-level controllers and fully describe the maneuver.

The goal is to optimize these parameters to perform a successful flip. To this end, I first implement a simulation pipeline using [Webots](https://cyberbotics.com/), where I optimize the parameters using a genetic algorithm capable of handling a high number of drones to be optimized in parallel. Then, I transfer to a real-life [Crazyflie drone](https://www.bitcraze.io/) performing sim-to-real. The drone uses the results of the simulation as initial conditions and iteratively learns to perform the flip dealing with unsimulated disturbances in the real world.

# Simulation

# Drone flight

