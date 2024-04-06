#pragma once

#include <string>
#include <iostream>

#include "ros/ros.h"
#include <signal.h>
#include <actionlib/server/simple_action_server.h>
#include <pilot/SimulationParameters.h>
#include <pilot/SimulateAction.h>

#include "Simulator.h"
#include "Hyperparameters.h"

using namespace std;

class Pilot {
    private:
        const string kName_;
        ros::NodeHandle* const kNodeHandle_;
        actionlib::SimpleActionServer<pilot::SimulateAction>* const kSimulateActionServer_;

    private:
        string initName(int argc, char** argv);
        ros::NodeHandle* initNodeHandle(int argc, char **argv);
        actionlib::SimpleActionServer<pilot::SimulateAction>* initSimulateActionServer();

    public:
        Pilot(int argc, char **argv);

        void simulateActionServerExecuteCB(const pilot::SimulateGoalConstPtr &goal);

        void run();
};