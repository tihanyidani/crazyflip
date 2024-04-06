#pragma once

#include <string>
#include <vector>
#include <iostream>

#include "ros/ros.h"
#include <signal.h>
#include <webots_ros/get_uint64.h>
#include <webots_ros/node_get_field.h>
#include <webots_ros/field_import_node_from_string.h>
#include <webots_ros/field_remove.h>
#include <pilot/SimulateAction.h>
#include <pilot/SimulationParameters.h>
#include <pilot/SimulationResults.h>
#include <pilot/Plan.h>
#include <pilot/Command.h>

#include "PilotHandler.h"
#include "CrazyflieHandler.h"
#include "Hyperparameters.h"

using namespace std;

class Orchestrator {
    private:
        ros::NodeHandle* const kNodeHandle_;
        const uint64_t kField_;

        const int kNPilots_;
        const vector<PilotHandler*> kPilotHandlerList_;

    private:
        ros::NodeHandle* initNodeHandle(int argc, char **argv);
        uint64_t initField();

        int initNPilots(int argc, char** argv);
        vector<PilotHandler*> initPilotHandlerList();

        void addCrazyflieToArena(string node_string);
        void removeLastCrazyflieFromArena();

    public:
        Orchestrator(int argc, char **argv);

        void run();
};