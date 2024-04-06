#pragma once

#include "ros/ros.h"
#include <webots_ros/set_float.h>
#include <pilot/SimulationParameters.h>

#include <string>

#include "Variable.h"
#include "Hyperparameters.h"

using namespace std;

class MotorHandler {
    private:
        const int kId_;
        const Tag kTag_;
        const string kName_;
        const string kCrazyflieName_;

        ros::NodeHandle* kNodeHandle_;

    private:
        ros::ServiceClient client_;

    private:
        void initClient();

    public:
        MotorHandler(int id, Tag tag, pilot::SimulationParameters simulation_parameters, ros::NodeHandle* node_handle);

        void apply(Variable* motor_input);
};