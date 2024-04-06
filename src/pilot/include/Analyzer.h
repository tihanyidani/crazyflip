#pragma once

#include <iostream>

#include "ros/ros.h"
#include <pilot/Box.h>
#include <pilot/SimulationParameters.h>
#include <pilot/SimulateAction.h>

#include "Variable.h"
#include "Hyperparameters.h"

class Analyzer {
    private:
        const ros::Time kInitTime_;
        const pilot::Box kFlyBox_;
        const double kFlyTime_;

    private:
        bool has_terminated_;
        bool is_out_of_box_;
        bool is_out_of_time_;

        bool has_survived_;
        ros::Duration survival_time_;

        Variable* final_measurement_;
        Variable* final_error_;

        double fitness_;

    private:
        bool isInBox(Variable* measurement);
        bool isInTime(ros::Time time);

        Variable* calculateFinalError(Variable* final_measurement);
        double calculateFitness(Variable* final_error, bool has_survived, ros::Duration survival_time);

    public:
        Analyzer(pilot::SimulationParameters simulation_parameters);

        bool checkTerminalConditions(Variable* measurement, ros::Time time);

        pilot::SimulateResult getResult();
};