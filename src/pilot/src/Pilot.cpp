#include "Pilot.h"

Pilot::Pilot(int argc, char **argv) :
    kName_(initName(argc, argv)),
    kNodeHandle_(initNodeHandle(argc, argv)),
    kSimulateActionServer_(initSimulateActionServer()) {
    kSimulateActionServer_->start();
}

string Pilot::initName(int argc, char** argv) {
    try {
        if(argc > 1) {
            return argv[1];

        } else {
            throw runtime_error("Pilot error: cannot initialize without name input argument.");
        }
    } catch(exception& e) {
        cerr << e.what() << endl;
    }

    return "";
}

ros::NodeHandle* Pilot::initNodeHandle(int argc, char **argv) {
    ros::init(argc, argv, kName_, ros::init_options::AnonymousName);
    ros::NodeHandle* node_handle = new ros::NodeHandle();

    signal(SIGINT, Hyperparameters::sQuit);

    return node_handle;
}

actionlib::SimpleActionServer<pilot::SimulateAction>* Pilot::initSimulateActionServer() {
    actionlib::SimpleActionServer<pilot::SimulateAction>* action_server = new actionlib::SimpleActionServer<pilot::SimulateAction>((*kNodeHandle_), Hyperparameters::sGenerateSimulateActionName(kName_), boost::bind(&Pilot::simulateActionServerExecuteCB, this, _1), false);
    return action_server;
}

void Pilot::simulateActionServerExecuteCB(const pilot::SimulateGoalConstPtr& goal) {
    ros::Rate rate(Hyperparameters::SENSOR_SAMPLING_FREQUENCY);

    pilot::SimulationParameters simulation_parameters = goal->simulation_parameters;
    simulation_parameters.pilot_name = kName_;
    simulation_parameters.init_time = ros::Time::now();

    Simulator* simulator = new Simulator(simulation_parameters, kNodeHandle_);

    while(ros::ok && !simulator->hasTerminated()) {
        rate.sleep();

        simulator->step();

        pilot::SimulateFeedback feedback = simulator->getFeedback();
        kSimulateActionServer_->publishFeedback(feedback);
    }

    pilot::SimulateResult result = simulator->getResult();
    kSimulateActionServer_->setSucceeded(result);
}

void Pilot::run() {
    ros::spin();
}