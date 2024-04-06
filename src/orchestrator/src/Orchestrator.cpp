#include "Orchestrator.h"

Orchestrator::Orchestrator(int argc, char **argv) :
    kNodeHandle_(initNodeHandle(argc, argv)),
    kField_(initField()), 
    kNPilots_(initNPilots(argc, argv)),
    kPilotHandlerList_(initPilotHandlerList()) {}

ros::NodeHandle* Orchestrator::initNodeHandle(int argc, char **argv) {
    ros::init(argc, argv, Hyperparameters::ORCHESTRATOR_NODE_NAME, ros::init_options::AnonymousName);
    ros::NodeHandle* node_handle = new ros::NodeHandle();

    signal(SIGINT, Hyperparameters::sQuit);

    return node_handle;
}

uint64_t Orchestrator::initField() {
    webots_ros::get_uint64 get_root_srv_msg;
    get_root_srv_msg.request.ask = true;
    Hyperparameters::sCallService<webots_ros::get_uint64>(Hyperparameters::GET_ROOT_SRV_NAME, get_root_srv_msg, kNodeHandle_);
    uint64_t node = get_root_srv_msg.response.value;

    webots_ros::node_get_field get_field_srv_msg;
    get_field_srv_msg.request.node = node;
    get_field_srv_msg.request.fieldName = Hyperparameters::FIELD_NAME;
    get_field_srv_msg.request.proto = false;
    Hyperparameters::sCallService<webots_ros::node_get_field>(Hyperparameters::GET_FIELD_SRV_NAME, get_field_srv_msg, kNodeHandle_);
    uint64_t field = get_field_srv_msg.response.field;

    return field;
}

int Orchestrator::initNPilots(int argc, char **argv) {
    try {
        if(argc > 1) {
            return stoi(argv[1]);

        } else {
            throw runtime_error("Orchestrator error: cannot initialize without n_pilots input argument.");
        }
    } catch(exception& e) {
        cerr << e.what() << endl;
    }

    return 0;
}

vector<PilotHandler*> Orchestrator::initPilotHandlerList() {
    vector<PilotHandler*> pilot_handler_list;
    
    for(int id=1; id<=kNPilots_; id++) {
        pilot_handler_list.push_back(new PilotHandler(id));
    }

    return pilot_handler_list;
}

void Orchestrator::addCrazyflieToArena(string node_string) {
    webots_ros::field_import_node_from_string import_node_srv_msg;
    import_node_srv_msg.request.field = kField_;
    import_node_srv_msg.request.position = -1;
    import_node_srv_msg.request.nodeString = node_string;
    Hyperparameters::sCallService<webots_ros::field_import_node_from_string>(Hyperparameters::IMPORT_NODE_SRV_NAME, import_node_srv_msg, kNodeHandle_);
}

void Orchestrator::removeLastCrazyflieFromArena() {
    webots_ros::field_remove remove_node_srv_msg;
    remove_node_srv_msg.request.field = kField_;
    remove_node_srv_msg.request.index = -1;
    Hyperparameters::sCallService<webots_ros::field_remove>(Hyperparameters::REMOVE_NODE_SRV_NAME, remove_node_srv_msg, kNodeHandle_);
}

void Orchestrator::run() {
    
    //------
    for(int i=0; i<kNPilots_; i++) {
        auto pilot_handler = kPilotHandlerList_.at(i);

        CrazyflieHandler* crazyflie_handler_i = new CrazyflieHandler(pilot_handler);
        string node_string = crazyflie_handler_i->generateNodeString();
        addCrazyflieToArena(node_string);

        pilot::Plan plan;
        plan.interval_list = {8.0, 10.0};
        pilot::Command command_1;
        command_1.height = 1 + i;
        command_1.accel = 55.0;
        pilot::Command command_2;
        command_2.height = 2 + i;
        command_2.accel = 55.0;
        plan.command_list = {command_1, command_2};

        pilot::SimulateGoal goal;
        goal.simulation_parameters.iteration_number = 1;
        goal.simulation_parameters.fly_time = 20.0;
        goal.simulation_parameters.plan = plan;
        goal.simulation_parameters = crazyflie_handler_i->updateSimulationParameters(goal.simulation_parameters);

        pilot_handler->callSimulateAction(goal);
    }

    bool is_running = true;
    while(is_running) {
        bool has_terminated = true;
        for(auto pilot_handler : kPilotHandlerList_) {
            has_terminated *= pilot_handler->hasTerminated();
        }
        is_running = !has_terminated;
    }

    ROS_ERROR("TERMINATED");

    for(auto pilot_handler : kPilotHandlerList_) {
        auto results = pilot_handler->getSimulateActionResult();
        //fill ---------------------------------------

        if(results.simulation_results.has_survived) {
            ROS_ERROR("survived");
        } else {
            ROS_ERROR("did't survive");
        }

        ROS_ERROR("survival time: %f", results.simulation_results.survival_time);
        ROS_ERROR("fitness: %f", results.simulation_results.fitness);

        removeLastCrazyflieFromArena();
    }

    //------

    //ros::spin();
    
    
}