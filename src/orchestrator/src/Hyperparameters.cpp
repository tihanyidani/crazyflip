#include "Hyperparameters.h"

const string Hyperparameters::ORCHESTRATOR_NODE_NAME = "orchestrator";
const string Hyperparameters::GET_ROOT_SRV_NAME = "/supervisor/get_root";
const string Hyperparameters::GET_FIELD_SRV_NAME = "/supervisor/node/get_field";
const string Hyperparameters::FIELD_NAME = "children";
const string Hyperparameters::IMPORT_NODE_SRV_NAME = "/supervisor/field/import_node_from_string";
const string Hyperparameters::REMOVE_NODE_SRV_NAME = "/supervisor/field/remove";

string Hyperparameters::sGeneratePilotName(int pilot_id) {
    return "pilot_" + to_string(pilot_id);
}
string Hyperparameters::sGeneratePilotLaunchString(string pilot_name) {
    return "roslaunch pilot pilot.launch name:=\"" + pilot_name + "\" &";
}
string Hyperparameters::sGenerateSimulateActionName(string pilot_name) {
    return pilot_name + "/simulate";
}

string Hyperparameters::sGenerateCrazyflieName(int pilot_id) {
    return "crazyflie_" + to_string(pilot_id);
}
const Position Hyperparameters::BASE_POSITION = {.x = 0.0, .y = 0.0, .z = 0.015};
const Position Hyperparameters::TRANSLATION_VECTOR = {.x = 0.0, .y = 4.0, .z = 0.0};
const Box Hyperparameters::BASE_BOX = {
    .x_min = -2.0, .x_max = 2.0,
    .y_min = -2.0, .y_max = 2.0,
    .z_min = -0.01, .z_max = 4.0
};
Position Hyperparameters::sGenerateStartingPosition(int pilot_id) {
    int translation = pilot_id - 1;
    return {
        .x = BASE_POSITION.x + translation * TRANSLATION_VECTOR.x,
        .y = BASE_POSITION.y + translation * TRANSLATION_VECTOR.y,
        .z = BASE_POSITION.z + translation * TRANSLATION_VECTOR.z
        };
}
Box Hyperparameters::sGenerateFlyBox(Position starting_position) {
    return {
        .x_min = BASE_BOX.x_min + starting_position.x, .x_max = BASE_BOX.x_max + starting_position.x,
        .y_min = BASE_BOX.y_min + starting_position.y, .y_max = BASE_BOX.y_max + starting_position.y,
        .z_min = BASE_BOX.z_min + starting_position.z, .z_max = BASE_BOX.z_max + starting_position.z
        };
}
string Hyperparameters::sGenerateNodeString(string crazyflie_name, Position starting_position) {
    string position_string = to_string(starting_position.x) + " " + to_string(starting_position.y) + " " + to_string(starting_position.z);
    return "Crazyflie { name \"" + crazyflie_name + "\" controller \"ros\" controllerArgs \"--name=" + crazyflie_name + "\" translation " + position_string + "}";
}
pilot::Box Hyperparameters::sConvertBox(Box box) {
    pilot::Box box_msg;
    
    box_msg.x_min = box.x_min;
    box_msg.x_max = box.x_max;
    box_msg.y_min = box.y_min;
    box_msg.y_max = box.y_max;
    box_msg.z_min = box.z_min;
    box_msg.z_max = box.z_max;

    return box_msg;    
}

template <typename T>
bool Hyperparameters::sCallService(string srv_name, T& srv_msg, ros::NodeHandle* const node_handle) {
    ros::service::waitForService(srv_name);
    ros::spinOnce();

    ros::ServiceClient client = node_handle->serviceClient<T>(srv_name);

    bool success = client.call(srv_msg);
    if(!success) {
        ROS_ERROR("Failed to call service: %s", srv_name.c_str());
    }

    return success;
}

void Hyperparameters::sQuit(int sig) {
    ros::shutdown();
    exit(0);
}

template bool Hyperparameters::sCallService<webots_ros::get_uint64>(string srv_name, webots_ros::get_uint64& srv_msg, ros::NodeHandle* const node_handle);
template bool Hyperparameters::sCallService<webots_ros::node_get_field>(string srv_name, webots_ros::node_get_field& srv_msg, ros::NodeHandle* const node_handle);
template bool Hyperparameters::sCallService<webots_ros::field_import_node_from_string>(string srv_name, webots_ros::field_import_node_from_string& srv_msg, ros::NodeHandle* const node_handle);
template bool Hyperparameters::sCallService<webots_ros::field_remove>(string srv_name, webots_ros::field_remove& srv_msg, ros::NodeHandle* const node_handle);