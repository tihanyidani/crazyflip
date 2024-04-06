#include "MotorHandler.h"

MotorHandler::MotorHandler(int id, Tag tag, pilot::SimulationParameters simulation_parameters, ros::NodeHandle* node_handle) :
    kId_(id),
    kTag_(tag),
    kName_(Hyperparameters::sGenerateMotorName(id)),
    kCrazyflieName_(simulation_parameters.crazyflie_name),
    kNodeHandle_(node_handle) {
    initClient();    
}

void MotorHandler::initClient() {
    string position_srv_name = Hyperparameters::sGenerateMotorPositionSrvName(kCrazyflieName_, kName_);        
    ros::ServiceClient position_client = Hyperparameters::sGetServiceClient<webots_ros::set_float>(position_srv_name, kNodeHandle_);

    webots_ros::set_float init_position_srv_msg;
    init_position_srv_msg.request.value = std::numeric_limits<double>::infinity();
    Hyperparameters::sCallService<webots_ros::set_float>(init_position_srv_msg, position_client);

    string velocity_srv_name = Hyperparameters::sGenerateMotorVelocitySrvName(kCrazyflieName_, kName_);        
    ros::ServiceClient velocity_client = Hyperparameters::sGetServiceClient<webots_ros::set_float>(velocity_srv_name, kNodeHandle_);

    webots_ros::set_float init_velocity_srv_msg;
    init_velocity_srv_msg.request.value = -1.0;
    Hyperparameters::sCallService<webots_ros::set_float>(init_velocity_srv_msg, velocity_client);

    client_ = velocity_client;
}

void MotorHandler::apply(Variable* motor_input) {
    webots_ros::set_float velocity_srv_msg;
    velocity_srv_msg.request.value = motor_input->get(kTag_);
    if(!Hyperparameters::sCallService<webots_ros::set_float>(velocity_srv_msg, client_)) {
        ROS_ERROR("Failed to set motor input.");
    }
}