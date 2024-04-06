#include "Planner.h"

Planner::Planner(pilot::SimulationParameters simulation_parameters) :
    kInitTime_(simulation_parameters.init_time),
    kPlan_(simulation_parameters.plan) {}

pilot::Command Planner::getCommand(ros::Time time) {
    try {
        if(sizeof(kPlan_.interval_list) > 0) {
            ros::Duration duration = time - kInitTime_;
            double elapsed_time = duration.toSec();

            double interval_elapsed_time = 0.0;
            int stage;
            int n = sizeof(kPlan_.interval_list)/sizeof(double);
            for(int i=0; i<n; i++) {
                double interval_time = kPlan_.interval_list[i];
                interval_elapsed_time += interval_time;
                if(interval_elapsed_time > elapsed_time) {
                    stage = i;
                    break;
                }
            }

            return kPlan_.command_list[stage];

        } else {
            throw runtime_error("Planner error: plan is empty.");
        }
    }catch(exception& e) {
        cerr << e.what() << endl;
    }

    return kPlan_.command_list[0];
}

Variable* Planner::read(ros::Time time) {
    pilot::Command command = getCommand(time);

    Variable* command_variable = Hyperparameters::sConvertCommand(command);

    return command_variable;
}