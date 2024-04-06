#pragma once

#include <string>
#include <vector>
#include <cstdlib>

#include "ros/ros.h"
#include <rosbag/bag.h>
#include <pilot/SimulationParameters.h>
#include <pilot/Log.h>

#include "Variable.h"
#include "Hyperparameters.h"

using namespace std;

struct LogPackage {
    ros::Time time;
    Variable* measurement;
    Variable* command;
    Variable* motor_input;
};

class Logger {
    private:
        const string kFileName_;

    private:
        vector<pilot::Log> log_list_;

    public:
        Logger(pilot::SimulationParameters simulation_parameters);

        void add(LogPackage log_package);
        void save();
};