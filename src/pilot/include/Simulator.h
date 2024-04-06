#pragma once

#include "ros/ros.h"
#include <signal.h>
#include <pilot/SimulationParameters.h>
#include <pilot/SimulateAction.h>

#include <string>

#include "Sensor.h"
#include "Planner.h"
#include "Controller.h"
#include "Actuator.h"
#include "Hyperparameters.h"
#include "Analyzer.h"
#include "Logger.h"

using namespace std;

class Simulator {
    private:
        const pilot::SimulationParameters kSimulationParameters_;
        ros::NodeHandle* const kNodeHandle_;

        Sensor* const kSensor_;
        Planner* const kPlanner_;
        Controller* const kController_;
        Actuator* const kActuator_;
        
        Analyzer* const kAnalyzer_;
        Logger* const kLogger_;

    private:
        bool has_terminated_;
        pilot::SimulateFeedback feedback_;
        pilot::SimulateResult result_;

    private:
        pilot::SimulateFeedback calculateFeedback(ros::Time time);
        pilot::SimulateResult calculateResult();

    public:
        Simulator(pilot::SimulationParameters simulation_parameters, ros::NodeHandle* node_handle);

        void step();

        bool hasTerminated();
        pilot::SimulateFeedback getFeedback();
        pilot::SimulateResult getResult();
};