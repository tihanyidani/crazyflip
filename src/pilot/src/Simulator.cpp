#include "Simulator.h"

Simulator::Simulator(pilot::SimulationParameters simulation_parameters, ros::NodeHandle* node_handle) : 
    kSimulationParameters_(simulation_parameters),
    kNodeHandle_(node_handle),
    kSensor_(new Sensor(kSimulationParameters_, kNodeHandle_)),
    kPlanner_(new Planner(kSimulationParameters_)),
    kController_(new Controller(kSimulationParameters_)),
    kActuator_(new Actuator(kSimulationParameters_, kNodeHandle_)),
    kAnalyzer_(new Analyzer(kSimulationParameters_)),
    kLogger_(new Logger(kSimulationParameters_)) {
    has_terminated_ = false;
}

pilot::SimulateFeedback Simulator::calculateFeedback(ros::Time time) {
    pilot::SimulateFeedback feedback;

    ros::Duration duration = time - kSimulationParameters_.init_time;
    double elapsed_time = duration.toSec();
    feedback.progress_percentage = uint8_t((elapsed_time / kSimulationParameters_.fly_time) * 100);

    return feedback;
}

pilot::SimulateResult Simulator::calculateResult() {
    return kAnalyzer_->getResult();
}

void Simulator::step() {
    ros::Time time = ros::Time::now();
    feedback_ = calculateFeedback(time);

    Variable* measurement = kSensor_->read();
    Variable* command = kPlanner_->read(time);
    Variable* motor_input = kController_->apply(measurement, command, time);

    kActuator_->apply(motor_input);

    kLogger_->add({
        .time = time, 
        .measurement = measurement,
        .command = command,
        .motor_input = motor_input
    });

    if(kAnalyzer_->checkTerminalConditions(measurement, time)) {
        has_terminated_ = true;
        result_ = calculateResult();
        
        kLogger_->save();
    }
}

bool Simulator::hasTerminated() {
    return has_terminated_;
}

pilot::SimulateFeedback Simulator::getFeedback() {
    return feedback_;
}

pilot::SimulateResult Simulator::getResult() {
    return result_;
}