#include "Controller.h"

/*
Controller::Controller(pilot::SimulationParameters simulation_parameters) :
    kSensorSystem_(new System(Hyperparameters::SENSOR_SYSTEM_TYPE, Hyperparameters::SENSOR_SYSTEM_MATRICES, simulation_parameters.init_time)),
    kPlannerSystem_(new System(Hyperparameters::PLANNER_SYSTEM_TYPE, Hyperparameters::PLANNER_SYSTEM_MATRICES, simulation_parameters.init_time)),
    kControllerSystem_(new System(Hyperparameters::CONTROLLER_SYSTEM_TYPE, Hyperparameters::CONTROLLER_SYSTEM_MATRICES, simulation_parameters.init_time)) {}
*/
Controller::Controller(pilot::SimulationParameters simulation_parameters) :
    kControllerSystem_(new System(Hyperparameters::CONTROLLER_SYSTEM_TYPE, Hyperparameters::CONTROLLER_SYSTEM_MATRICES, simulation_parameters.init_time)) {}

Variable* Controller::apply(Variable* measurement, Variable* command, ros::Time time) {
    /*
    Variable* processed_measurement = kSensorSystem_->apply(nullptr, measurement, time);
    Variable* processed_command = kPlannerSystem_->apply(command, nullptr, time);
    Variable* input = kControllerSystem_->apply(processed_command, processed_measurement, time);
    Variable* motor_input = Hyperparameters::MOTOR_INPUT_CONVERTER_MATRIX->apply(input);
    return motor_input;
    */
    Variable* input = kControllerSystem_->apply(command, measurement, time);
    Variable* motor_input = Hyperparameters::MOTOR_INPUT_CONVERTER_MATRIX->apply(input);
    return motor_input;
}