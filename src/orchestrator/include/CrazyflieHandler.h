#pragma once

#include <string>

#include <pilot/SimulationParameters.h>

#include "PilotHandler.h"
#include "Hyperparameters.h"

using namespace std;

class CrazyflieHandler {
    private:
        const int kId_;
        const string kCrazyflieName_;
        const Position kStartingPosition_;
        const Box kFlyBox_;

    private:
        Position initStartingPosition();
        Box initFlyBox();

    public:
        CrazyflieHandler(PilotHandler* pilot_handler);

        string generateNodeString();

        pilot::SimulationParameters updateSimulationParameters(pilot::SimulationParameters simulation_parameters);
};