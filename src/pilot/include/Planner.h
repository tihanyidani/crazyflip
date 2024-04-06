#pragma once

#include "ros/ros.h"
#include <pilot/SimulateAction.h>
#include <pilot/Command.h>
#include <pilot/SimulationParameters.h>

#include <iostream>

#include "Variable.h"
#include "Hyperparameters.h"

using namespace std;

class Planner {
    private:
        const ros::Time kInitTime_;
        const pilot::Plan kPlan_;

    private:
        pilot::Command getCommand(ros::Time time);       

    public:
        Planner(pilot::SimulationParameters simulation_parameters);

        Variable* read(ros::Time time);
};
