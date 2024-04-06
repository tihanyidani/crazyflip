#pragma once

#include "ros/ros.h"
#include <webots_ros/set_float.h>
#include <pilot/SimulationParameters.h>

#include <vector>
#include <string>

#include "Variable.h"
#include "MotorHandler.h"
#include "Hyperparameters.h"

using namespace std;

class Actuator {
    private:
        const pilot::SimulationParameters kSimulationParameters_;
        ros::NodeHandle* kNodeHandle_;

        const vector<MotorHandler*> kMotors_;

    private:
        vector<MotorHandler*> initMotors();

    public:
        Actuator(pilot::SimulationParameters simulation_parameters, ros::NodeHandle* node_handle);

        void apply(Variable* motor_input);
};