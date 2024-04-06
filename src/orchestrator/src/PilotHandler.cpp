#include "PilotHandler.h"

PilotHandler::PilotHandler(int id) :
    kId_(id), 
    kPilotName_(Hyperparameters::sGeneratePilotName(id)),
    kSimulateActionClient_(initSimulateActionClient()) {
    is_active_ = false;
    has_terminated_ = false;
}

void PilotHandler::startPilotNode() {
    string launch_string = Hyperparameters::sGeneratePilotLaunchString(kPilotName_);
    if(system(launch_string.c_str()) == -1) {
        ROS_ERROR("Failed to initialize pilot.");
    }
}

actionlib::SimpleActionClient<pilot::SimulateAction>* PilotHandler::initSimulateActionClient() {
    startPilotNode();

    actionlib::SimpleActionClient<pilot::SimulateAction>* action_client = new actionlib::SimpleActionClient<pilot::SimulateAction>(Hyperparameters::sGenerateSimulateActionName(kPilotName_), true);
    action_client->waitForServer();

    return action_client;
}

int PilotHandler::getId() {
    return kId_;
}

string PilotHandler::getPilotName() {
    return kPilotName_;
}

void PilotHandler::callSimulateAction(pilot::SimulateGoal goal) {
    kSimulateActionClient_->sendGoal(goal, 
        boost::bind(&PilotHandler::simulateActionDoneCb, this, _1, _2), 
        boost::bind(&PilotHandler::simulateActionActiveCb, this),
        boost::bind(&PilotHandler::simulateActionFeedbackCb, this, _1));
}

bool PilotHandler::isActive() {
    return is_active_;
}

bool PilotHandler::hasTerminated() {
    return has_terminated_;
}

pilot::SimulateResult PilotHandler::getSimulateActionResult() {
    try {
        if(has_terminated_) {
            return simulate_action_result_;

        } else {
            throw runtime_error("PilotHandler error: did't terminate, no result available.");
        }

    } catch(exception& e) {
        cerr << e.what() << endl;
    }

    return simulate_action_result_;
}

pilot::SimulateFeedback PilotHandler::getSimulateActionFeedback() {
    try {
        if(is_active_) {
            return simulate_action_feedback_;

        } else {
            throw runtime_error("PilotHandler error: isn't active, no feedback available.");
        }

    } catch(exception& e) {
        cerr << e.what() << endl;
    }

    return simulate_action_feedback_;
}

void PilotHandler::simulateActionDoneCb(const actionlib::SimpleClientGoalState& state, const pilot::SimulateResultConstPtr& result) {
    is_active_ = false;
    has_terminated_ = true;

    simulate_action_result_ = (*result);
}

void PilotHandler::simulateActionActiveCb() {
    is_active_ = true;
    has_terminated_ = false;
}

void PilotHandler::simulateActionFeedbackCb(const pilot::SimulateFeedbackConstPtr& feedback) {
    simulate_action_feedback_ = (*feedback);
}