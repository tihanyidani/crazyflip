#include "Logger.h"

Logger::Logger(pilot::SimulationParameters simulation_parameters) :
    kFileName_(Hyperparameters::sGenerateLogFileName(simulation_parameters.iteration_number, simulation_parameters.crazyflie_name)) {}

void Logger::add(LogPackage log_package) {
    pilot::Log log;

    log.stamp = log_package.time;
    log.measurement = Hyperparameters::sConvertMeasurement(log_package.measurement);
    log.command = Hyperparameters::sConvertCommand(log_package.command);
    log.motor_input = Hyperparameters::sConvertMotorInput(log_package.motor_input);

    log_list_.push_back(log);
}

void Logger::save() {
    rosbag::Bag bag;
    
    bag.open(kFileName_, rosbag::bagmode::Write);

    for(pilot::Log log : log_list_) {
        bag.write(Hyperparameters::LOG_MSG_NAME, log.stamp, log);
    }

    bag.close();
}