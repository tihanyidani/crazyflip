#pragma once

#include <string>
#include <vector>
#include <cstdlib>
#include <iostream>

#include "ros/ros.h"
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <pilot/SimulateAction.h>

#include "Hyperparameters.h"

using namespace std;

class PilotHandler {
    private:
        const int kId_;
        const string kPilotName_;

        actionlib::SimpleActionClient<pilot::SimulateAction>* const kSimulateActionClient_;

    private:
        bool is_active_;
        bool has_terminated_;
        pilot::SimulateFeedback simulate_action_feedback_;
        pilot::SimulateResult simulate_action_result_;

    private:
        void startPilotNode();
        actionlib::SimpleActionClient<pilot::SimulateAction>* initSimulateActionClient();
    
    public:
        PilotHandler(int id);

        int getId();
        string getPilotName();

        void callSimulateAction(pilot::SimulateGoal goal);
        bool isActive();
        bool hasTerminated();
        pilot::SimulateResult getSimulateActionResult();
        pilot::SimulateFeedback getSimulateActionFeedback();

        void simulateActionDoneCb(const actionlib::SimpleClientGoalState& state, const pilot::SimulateResultConstPtr& result);
        void simulateActionActiveCb();
        void simulateActionFeedbackCb(const pilot::SimulateFeedbackConstPtr& feedback);
};