# crazyflip
This project aims to reproduce the results of the following paper: [A simple learning strategy for high-speed quadrocopter multi-flips](https://ieeexplore.ieee.org/abstract/document/5509452).

My goal is to use learning-based control methods to perform multi-flips using a small indoor drone. To achieve this, I split the project into two steps: Simulation in [Webots](https://cyberbotics.com/), and Drone flight using a [Crazyflie drone](https://www.bitcraze.io/).

# Overview
The method described in the paper reduces the complexity of the multi-flip maneuver to the optimization problem of a small number of parameters in the following way. We assume that a flip can be broken down into the following 5 stages: 

1) acceleration - moving upwards with increasing velocity,
2) start rotation - high angular acceleration
3) coast - letting the drone rotate,
4) stop rotation - angular deceleration
5) recovery - return to level flight.

Each stage can be described by a small number of parameters - acceleration, angular acceleration, and duration. 

# Simulation

# Drone flight

