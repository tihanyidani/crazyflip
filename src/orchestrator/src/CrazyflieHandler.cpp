#include "CrazyflieHandler.h"

CrazyflieHandler::CrazyflieHandler(PilotHandler* pilot_handler) :
    kId_(pilot_handler->getId()),
    kCrazyflieName_(Hyperparameters::sGenerateCrazyflieName(kId_)),
    kStartingPosition_(initStartingPosition()),
    kFlyBox_(initFlyBox()) {}

Position CrazyflieHandler::initStartingPosition() {
    return Hyperparameters::sGenerateStartingPosition(kId_);
}

Box CrazyflieHandler::initFlyBox() {
    return Hyperparameters::sGenerateFlyBox(kStartingPosition_);
}

string CrazyflieHandler::generateNodeString() {
    return Hyperparameters::sGenerateNodeString(kCrazyflieName_, kStartingPosition_);
}

pilot::SimulationParameters CrazyflieHandler::updateSimulationParameters(pilot::SimulationParameters simulation_parameters) {
    simulation_parameters.crazyflie_name = kCrazyflieName_;
    simulation_parameters.fly_box = Hyperparameters::sConvertBox(kFlyBox_);
    return simulation_parameters;
}