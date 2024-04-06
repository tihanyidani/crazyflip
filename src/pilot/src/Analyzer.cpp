#include "Analyzer.h"

Analyzer::Analyzer(pilot::SimulationParameters simulation_parameters) :
    kInitTime_(simulation_parameters.init_time), 
    kFlyBox_(simulation_parameters.fly_box), 
    kFlyTime_(simulation_parameters.fly_time) {

    has_terminated_ = false;
    is_out_of_box_ = false;
    is_out_of_time_ = false;

    has_survived_ = false;
    survival_time_ = ros::Duration(0.0);

    final_measurement_ = nullptr;
    final_error_ = nullptr;

    fitness_ = 0.0;
}

bool Analyzer::isInBox(Variable* measurement) {
    double x = measurement->get(Tag::x);
    double y = measurement->get(Tag::y);
    double z = measurement->get(Tag::z);

    bool is_in_box = true;

    is_in_box *= kFlyBox_.x_min <= x && x <= kFlyBox_.x_max;
    is_in_box *= kFlyBox_.y_min <= y && y <= kFlyBox_.y_max;
    is_in_box *= kFlyBox_.z_min <= z && z <= kFlyBox_.z_max;

    return is_in_box;
}

bool Analyzer::isInTime(ros::Time time) {
    ros::Duration duration = time - kInitTime_;
    double elapsed_time = duration.toSec();
    return elapsed_time <= kFlyTime_;
}

Variable* Analyzer::calculateFinalError(Variable* final_measurement) {
    return Variable::minus(Hyperparameters::IDEAL_FINAL_MEASUREMENT, final_measurement);
}

double Analyzer::calculateFitness(Variable* final_error, bool has_survived, ros::Duration survival_time) {
    double fitness = 0.0;

    fitness += Hyperparameters::SURVIVAL_TIME_REWARD * survival_time.toSec();

    if(has_survived) {
        fitness += Hyperparameters::SURVIVED_REWARD;

        fitness += Hyperparameters::sFinalErrorRewardFunction(final_error);
    }
    
    return fitness;
}

bool Analyzer::checkTerminalConditions(Variable* measurement, ros::Time time) {
    is_out_of_box_ = !isInBox(measurement);
    is_out_of_time_ = !isInTime(time);
    has_terminated_ = is_out_of_box_ || is_out_of_time_;

    if(has_terminated_) {
        has_survived_ = !is_out_of_box_;
        survival_time_ = time - kInitTime_;
        
        final_measurement_ = measurement;
        final_error_ = calculateFinalError(final_measurement_);

        fitness_ = calculateFitness(final_error_, has_survived_, survival_time_);
    }

    return has_terminated_;
}

pilot::SimulateResult Analyzer::getResult() {
    pilot::SimulateResult simulate_result;
    
    try {
        if(has_terminated_) {
            simulate_result.simulation_results.has_survived = has_survived_;
            simulate_result.simulation_results.survival_time = survival_time_.toSec();
            simulate_result.simulation_results.fitness = fitness_;

            return simulate_result;

        } else {
            throw runtime_error("Analyzer error: simulator not terminated, fitness not calculated yet.");
        }

    } catch(exception& e) {
        cerr << e.what() << endl;
    }

    return simulate_result;
}