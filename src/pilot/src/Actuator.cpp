#include "Actuator.h"

Actuator::Actuator(pilot::SimulationParameters simulation_parameters, ros::NodeHandle* node_handle) :
    kSimulationParameters_(simulation_parameters),
    kNodeHandle_(node_handle),
    kMotors_(initMotors()) {}

vector<MotorHandler*> Actuator::initMotors() {
    vector<MotorHandler*> motors;

    for(int i=0; i<4; i++) {
        int id = Hyperparameters::MOTOR_ID_LIST.at(i);
        Tag tag = Hyperparameters::MOTOR_INPUT_TYPE->getTags().at(i);

        motors.push_back(new MotorHandler(id, tag, kSimulationParameters_, kNodeHandle_));
    }

    return motors;
}

void Actuator::apply(Variable* motor_input) {
    for(MotorHandler* motor_handler : kMotors_) {
        motor_handler->apply(motor_input);
    }
}