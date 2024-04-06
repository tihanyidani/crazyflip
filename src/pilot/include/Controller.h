#pragma once

#include <pilot/SimulationParameters.h>

#include "Variable.h"
#include "System.h"
#include "Hyperparameters.h"

class Controller {
    private:
        const ros::Time kInitTime_;

    private:
        //System* const kSensorSystem_;
        //System* const kPlannerSystem_;
        System* const kControllerSystem_;

    public:
        Controller(pilot::SimulationParameters simulation_parameters);

        Variable* apply(Variable* measurement, Variable* command, ros::Time time);
};