#include "Hyperparameters.h"

//----- TYPES -----
/*
Type* const Hyperparameters::MEASUREMENT_TYPE = new Type({
    Tag::x, Tag::y, Tag::z,
    Tag::roll, Tag::pitch, Tag::yaw
});
Type* const Hyperparameters::SENSOR_MEMORY_TYPE = new Type({
    Tag::roll, Tag::d_roll
});
Type* const Hyperparameters::PROCESSED_MEASUREMENT_TYPE = new Type({
    Tag::x, Tag::y, Tag::z,
    Tag::d_roll, Tag::pitch, Tag::yaw,
});

Type* const Hyperparameters::COMMAND_TYPE = new Type({
    Tag::accel, Tag::dd_roll, Tag::pitch, Tag::yaw
});
Type* const Hyperparameters::PLANNER_MEMORY_TYPE = new Type({
    Tag::d_roll
});
Type* const Hyperparameters::PROCESSED_COMMAND_TYPE = new Type({
    Tag::accel, Tag::d_roll, Tag::pitch, Tag::yaw
});

Type* const Hyperparameters::CONTROLLER_MEMORY_TYPE = new Type({
    Tag::e_d_roll, Tag::e_pitch, Tag::e_yaw,
    Tag::i_e_d_roll, Tag::i_e_pitch, Tag::i_e_yaw,
    Tag::d_e_d_roll, Tag::d_e_pitch, Tag::d_e_yaw
});
Type* const Hyperparameters::INPUT_TYPE = new Type({
    Tag::accel, Tag::roll, Tag::pitch, Tag::yaw
});
Type* const Hyperparameters::MOTOR_INPUT_TYPE = new Type({
    Tag::motor_1, Tag::motor_2, Tag::motor_3, Tag::motor_4
});
*/
Type* const Hyperparameters::MEASUREMENT_TYPE = new Type({
    Tag::x, Tag::y, Tag::z,
    Tag::roll, Tag::pitch, Tag::yaw
});

Type* const Hyperparameters::COMMAND_TYPE = new Type({
    Tag::height, Tag::accel, Tag::roll, Tag::pitch, Tag::yaw
});

Type* const Hyperparameters::CONTROLLER_MEMORY_TYPE = new Type({
    Tag::e_height, Tag::e_roll, Tag::e_pitch, Tag::e_yaw,
    Tag::i_e_height, Tag::i_e_roll, Tag::i_e_pitch, Tag::i_e_yaw,
    Tag::d_e_height, Tag::d_e_roll, Tag::d_e_pitch, Tag::d_e_yaw
});
Type* const Hyperparameters::INPUT_TYPE = new Type({
    Tag::accel, Tag::roll, Tag::pitch, Tag::yaw
});
Type* const Hyperparameters::MOTOR_INPUT_TYPE = new Type({
    Tag::motor_1, Tag::motor_2, Tag::motor_3, Tag::motor_4
});

//----- PILOT PARAMETERS -----
string Hyperparameters::sGenerateSimulateActionName(string pilot_name) {
    return pilot_name + "/simulate";
}

//----- SENSOR PARAMETERS -----
const int Hyperparameters::SENSOR_SAMPLING_TIME_STEP = 32;
const int Hyperparameters::SENSOR_SAMPLING_FREQUENCY = 30; //int(1000.0 / SENSOR_SAMPING_TIME_STEP);

string Hyperparameters::sGenerateGPSEnableSrvName(string crazyflie_name) {
    return "/" + crazyflie_name + "/gps/enable";
}
string Hyperparameters::sGenerateIMUEnableSrvName(string crazyflie_name) {
    return "/" + crazyflie_name + "/inertial_unit/enable";
}
string Hyperparameters::sGenerateGPSValuesTpcName(string crazyflie_name) {
    return "/" + crazyflie_name + "/gps/values";
}
string Hyperparameters::sGenerateIMUValuesTpcName(string crazyflie_name) {
    return "/" + crazyflie_name + "/inertial_unit/quaternion";
}

//----- PLANNER PARAMETERS -----
/*
Variable* Hyperparameters::sConvertCommand(pilot::Command command) {
    Variable* command_variable = new Variable(Hyperparameters::COMMAND_TYPE);

    command_variable->set(Tag::accel, command.accel);
    command_variable->set(Tag::dd_roll, command.dd_roll);
    command_variable->set(Tag::pitch, 0.0);
    command_variable->set(Tag::yaw, 0.0);

    return command_variable;
}
*/
Variable* Hyperparameters::sConvertCommand(pilot::Command command) {
    Variable* command_variable = new Variable(Hyperparameters::COMMAND_TYPE);

    command_variable->set(Tag::height, command.height);
    command_variable->set(Tag::accel, command.accel);
    command_variable->set(Tag::roll, 0.0);
    command_variable->set(Tag::pitch, 0.0);
    command_variable->set(Tag::yaw, 0.0);

    return command_variable;
}

//----- CONTROLLER PARAMETERS -----
/*
const PIDGains Hyperparameters::D_ROLL_PID_GAINS = {
    .P = 0.6, .I = 0.6, .D = 0.0
};
const PIDGains Hyperparameters::PITCH_PID_GAINS = {
    .P = 0.6, .I = 0.6, .D = 0.6
};
const PIDGains Hyperparameters::YAW_PID_GAINS = {
    .P = 3.0, .I = 0.1, .D = 3.0
};

Matrix* Hyperparameters::sSensorGetA(double dt) {
    Matrix* A = new Matrix(SENSOR_MEMORY_TYPE, SENSOR_MEMORY_TYPE);

    A->set(Tag::d_roll, Tag::roll, -1/dt);

    return A;
}
Matrix* Hyperparameters::sSensorGetB_z(double dt) {
    Matrix* B_z = new Matrix(SENSOR_MEMORY_TYPE, MEASUREMENT_TYPE);

    B_z->set(  Tag::roll,  Tag::roll,    1);
    B_z->set(Tag::d_roll,  Tag::roll, 1/dt);

    return B_z;
}
Matrix* Hyperparameters::sSensorGetC(double dt) {
    Matrix* C = new Matrix(PROCESSED_MEASUREMENT_TYPE, SENSOR_MEMORY_TYPE);

    C->set(Tag::d_roll, Tag::d_roll, 1);

    return C;
}Matrix* Hyperparameters::sSensorGetD_z(double dt) {
    Matrix* D_z = new Matrix(PROCESSED_MEASUREMENT_TYPE, MEASUREMENT_TYPE);

    D_z->set(    Tag::x,     Tag::x, 1);
    D_z->set(    Tag::y,     Tag::y, 1);
    D_z->set(    Tag::z,     Tag::z, 1);
    D_z->set(Tag::pitch, Tag::pitch, 1);
    D_z->set(  Tag::yaw,   Tag::yaw, 1);

    return D_z;
}

Matrix* Hyperparameters::sPlannerGetA(double dt) {
    Matrix* A = new Matrix(PLANNER_MEMORY_TYPE, PLANNER_MEMORY_TYPE);

    A->set(Tag::d_roll, Tag::d_roll, 1);

    return A;
}
Matrix* Hyperparameters::sPlannerGetB_u(double dt) {
    Matrix* B_z = new Matrix(PLANNER_MEMORY_TYPE, COMMAND_TYPE);

    B_z->set(Tag::d_roll, Tag::dd_roll, dt);

    return B_z;
}
Matrix* Hyperparameters::sPlannerGetC(double dt) {
    Matrix* C = new Matrix(PROCESSED_COMMAND_TYPE, PLANNER_MEMORY_TYPE);

    C->set(Tag::d_roll, Tag::d_roll, 1);

    return C;
}Matrix* Hyperparameters::sPlannerGetD_u(double dt) {
    Matrix* D_u = new Matrix(PROCESSED_COMMAND_TYPE, COMMAND_TYPE);

    D_u->set(Tag::accel, Tag::accel, 1);
    D_u->set(Tag::pitch, Tag::pitch, 1);
    D_u->set(  Tag::yaw,   Tag::yaw, 1);

    return D_u;
}

Matrix* Hyperparameters::sControllerGetA(double dt) {
    Matrix* A = new Matrix(CONTROLLER_MEMORY_TYPE, CONTROLLER_MEMORY_TYPE);

    A->set(Tag::i_e_d_roll, Tag::i_e_d_roll, 1);
    A->set( Tag::i_e_pitch,  Tag::i_e_pitch, 1);
    A->set(   Tag::i_e_yaw,    Tag::i_e_yaw, 1);

    A->set(Tag::d_e_d_roll, Tag::e_d_roll, -1/dt);
    A->set( Tag::d_e_pitch,  Tag::e_pitch, -1/dt);
    A->set(   Tag::d_e_yaw,    Tag::e_yaw, -1/dt);

    return A;
}
Matrix* Hyperparameters::sControllerGetB_u(double dt) {
    Matrix* B_u = new Matrix(CONTROLLER_MEMORY_TYPE, PROCESSED_COMMAND_TYPE);

    B_u->set(Tag::e_d_roll, Tag::d_roll, 1);
    B_u->set( Tag::e_pitch,  Tag::pitch, 1);
    B_u->set(   Tag::e_yaw,    Tag::yaw, 1);

    B_u->set(Tag::i_e_d_roll, Tag::d_roll, dt);
    B_u->set( Tag::i_e_pitch,  Tag::pitch, dt);
    B_u->set(   Tag::i_e_yaw,    Tag::yaw, dt);

    B_u->set(Tag::d_e_d_roll, Tag::d_roll, 1/dt);
    B_u->set( Tag::d_e_pitch,  Tag::pitch, 1/dt);
    B_u->set(   Tag::d_e_yaw,    Tag::yaw, 1/dt);

    return B_u;
}
Matrix* Hyperparameters::sControllerGetB_z(double dt) {
    Matrix* B_z = new Matrix(CONTROLLER_MEMORY_TYPE, PROCESSED_MEASUREMENT_TYPE);

    B_z->set(Tag::e_d_roll, Tag::d_roll, -1);
    B_z->set( Tag::e_pitch,  Tag::pitch, -1);
    B_z->set(   Tag::e_yaw,    Tag::yaw, -1);

    B_z->set(Tag::i_e_d_roll, Tag::d_roll, -dt);
    B_z->set( Tag::i_e_pitch,  Tag::pitch, -dt);
    B_z->set(   Tag::i_e_yaw,    Tag::yaw, -dt);

    B_z->set(Tag::d_e_d_roll, Tag::d_roll, -1/dt);
    B_z->set( Tag::d_e_pitch,  Tag::pitch, -1/dt);
    B_z->set(   Tag::d_e_yaw,    Tag::yaw, -1/dt);

    return B_z;
}
Matrix* Hyperparameters::sControllerGetC(double dt) {
    Matrix* C = new Matrix(INPUT_TYPE, CONTROLLER_MEMORY_TYPE);

    C->set(Tag::roll,   Tag::e_d_roll, D_ROLL_PID_GAINS.P);
    C->set(Tag::roll, Tag::i_e_d_roll, D_ROLL_PID_GAINS.I);
    C->set(Tag::roll, Tag::d_e_d_roll, D_ROLL_PID_GAINS.D);

    C->set(Tag::pitch,   Tag::e_pitch, PITCH_PID_GAINS.P);
    C->set(Tag::pitch, Tag::i_e_pitch, PITCH_PID_GAINS.I);
    C->set(Tag::pitch, Tag::d_e_pitch, PITCH_PID_GAINS.D);

    C->set(Tag::yaw,   Tag::e_yaw, YAW_PID_GAINS.P);
    C->set(Tag::yaw, Tag::i_e_yaw, YAW_PID_GAINS.I);
    C->set(Tag::yaw, Tag::d_e_yaw, YAW_PID_GAINS.D);

    return C;
}
Matrix* Hyperparameters::sControllerGetD_u(double dt) {
    Matrix* D_u = new Matrix(INPUT_TYPE, PROCESSED_COMMAND_TYPE);

    D_u->set(Tag::accel, Tag::accel, 1);

    return D_u;
}

const SystemType Hyperparameters::SENSOR_SYSTEM_TYPE= {
    .x_type = SENSOR_MEMORY_TYPE,
    .u_type = nullptr,
    .z_type = MEASUREMENT_TYPE,
    .y_type = PROCESSED_MEASUREMENT_TYPE
};
const SystemMatrices Hyperparameters::SENSOR_SYSTEM_MATRICES = {
    .getA = &sSensorGetA,
    .getB_u = nullptr,
    .getB_z = &sSensorGetB_z,
    .getC = &sSensorGetC,
    .getD_u = nullptr,
    .getD_z = &sSensorGetD_z
};

const SystemType Hyperparameters::PLANNER_SYSTEM_TYPE = {
    .x_type = PLANNER_MEMORY_TYPE,
    .u_type = COMMAND_TYPE,
    .z_type = nullptr,
    .y_type = PROCESSED_COMMAND_TYPE
};
const SystemMatrices Hyperparameters::PLANNER_SYSTEM_MATRICES = {
    .getA = &sPlannerGetA,
    .getB_u = &sPlannerGetB_u,
    .getB_z = nullptr,
    .getC = &sPlannerGetC,
    .getD_u = &sPlannerGetD_u,
    .getD_z = nullptr
};

const SystemType Hyperparameters::CONTROLLER_SYSTEM_TYPE = {
    .x_type = CONTROLLER_MEMORY_TYPE,
    .u_type = PROCESSED_COMMAND_TYPE,
    .z_type = PROCESSED_MEASUREMENT_TYPE,
    .y_type = INPUT_TYPE
};
const SystemMatrices Hyperparameters::CONTROLLER_SYSTEM_MATRICES = {
    .getA = &sControllerGetA,
    .getB_u = &sControllerGetB_u,
    .getB_z = &sControllerGetB_z,
    .getC = &sControllerGetC,
    .getD_u = &sControllerGetD_u,
    .getD_z = nullptr
};

Matrix* const Hyperparameters::MOTOR_INPUT_CONVERTER_MATRIX = new Matrix(MOTOR_INPUT_TYPE, INPUT_TYPE,
    {{-1,  1,  1, -1},
     { 1, -1,  1, -1},
     {-1, -1, -1, -1},
     { 1,  1, -1, -1}}
);
*/
const PIDGains Hyperparameters::HEIGHT_PID_GAINS = {
    .P = 3.0, .I = 0.1, .D = 3.0
};
const PIDGains Hyperparameters::ROLL_PID_GAINS = {
    .P = 0.6, .I = 0.6, .D = 0.6
};
const PIDGains Hyperparameters::PITCH_PID_GAINS = {
    .P = 0.6, .I = 0.6, .D = 0.6
};
const PIDGains Hyperparameters::YAW_PID_GAINS = {
    .P = 3.0, .I = 0.1, .D = 3.0
};

Matrix* Hyperparameters::sControllerGetA(double dt) {
    Matrix* A = new Matrix(CONTROLLER_MEMORY_TYPE, CONTROLLER_MEMORY_TYPE);

    A->set(Tag::i_e_height, Tag::i_e_height, 1);
    A->set(  Tag::i_e_roll,   Tag::i_e_roll, 1);
    A->set( Tag::i_e_pitch,  Tag::i_e_pitch, 1);
    A->set(   Tag::i_e_yaw,    Tag::i_e_yaw, 1);

    A->set(Tag::d_e_height, Tag::e_height, -1/dt);
    A->set(  Tag::d_e_roll,   Tag::e_roll, -1/dt);
    A->set( Tag::d_e_pitch,  Tag::e_pitch, -1/dt);
    A->set(   Tag::d_e_yaw,    Tag::e_yaw, -1/dt);

    return A;
}
Matrix* Hyperparameters::sControllerGetB_u(double dt) {
    Matrix* B_u = new Matrix(CONTROLLER_MEMORY_TYPE, COMMAND_TYPE);

    B_u->set(Tag::e_height, Tag::height, 1);
    B_u->set(  Tag::e_roll,   Tag::roll, 1);
    B_u->set( Tag::e_pitch,  Tag::pitch, 1);
    B_u->set(   Tag::e_yaw,    Tag::yaw, 1);

    B_u->set(Tag::i_e_height, Tag::height, dt);
    B_u->set(  Tag::i_e_roll,   Tag::roll, dt);
    B_u->set( Tag::i_e_pitch,  Tag::pitch, dt);
    B_u->set(   Tag::i_e_yaw,    Tag::yaw, dt);

    B_u->set(Tag::d_e_height, Tag::height, 1/dt);
    B_u->set(  Tag::d_e_roll,   Tag::roll, 1/dt);
    B_u->set( Tag::d_e_pitch,  Tag::pitch, 1/dt);
    B_u->set(   Tag::d_e_yaw,    Tag::yaw, 1/dt);

    return B_u;
}
Matrix* Hyperparameters::sControllerGetB_z(double dt) {
    Matrix* B_z = new Matrix(CONTROLLER_MEMORY_TYPE, MEASUREMENT_TYPE);

    B_z->set(Tag::e_height,      Tag::z, -1);
    B_z->set(  Tag::e_roll,   Tag::roll, -1);
    B_z->set( Tag::e_pitch,  Tag::pitch, -1);
    B_z->set(   Tag::e_yaw,    Tag::yaw, -1);

    B_z->set(Tag::i_e_height,      Tag::z, -dt);
    B_z->set(  Tag::i_e_roll,   Tag::roll, -dt);
    B_z->set( Tag::i_e_pitch,  Tag::pitch, -dt);
    B_z->set(   Tag::i_e_yaw,    Tag::yaw, -dt);

    B_z->set(Tag::d_e_height,      Tag::z, -1/dt);
    B_z->set(  Tag::d_e_roll,   Tag::roll, -1/dt);
    B_z->set( Tag::d_e_pitch,  Tag::pitch, -1/dt);
    B_z->set(   Tag::d_e_yaw,    Tag::yaw, -1/dt);

    return B_z;
}
Matrix* Hyperparameters::sControllerGetC(double dt) {
    Matrix* C = new Matrix(INPUT_TYPE, CONTROLLER_MEMORY_TYPE);

    C->set(Tag::accel,   Tag::e_height, HEIGHT_PID_GAINS.P);
    C->set(Tag::accel, Tag::i_e_height, HEIGHT_PID_GAINS.I);
    C->set(Tag::accel, Tag::d_e_height, HEIGHT_PID_GAINS.D);

    C->set(Tag::roll,   Tag::e_roll, ROLL_PID_GAINS.P);
    C->set(Tag::roll, Tag::i_e_roll, ROLL_PID_GAINS.I);
    C->set(Tag::roll, Tag::d_e_roll, ROLL_PID_GAINS.D);

    C->set(Tag::pitch,   Tag::e_pitch, PITCH_PID_GAINS.P);
    C->set(Tag::pitch, Tag::i_e_pitch, PITCH_PID_GAINS.I);
    C->set(Tag::pitch, Tag::d_e_pitch, PITCH_PID_GAINS.D);

    C->set(Tag::yaw,   Tag::e_yaw, YAW_PID_GAINS.P);
    C->set(Tag::yaw, Tag::i_e_yaw, YAW_PID_GAINS.I);
    C->set(Tag::yaw, Tag::d_e_yaw, YAW_PID_GAINS.D);

    return C;
}
Matrix* Hyperparameters::sControllerGetD_u(double dt) {
    Matrix* D_u = new Matrix(INPUT_TYPE, COMMAND_TYPE);

    D_u->set(Tag::accel, Tag::accel, 1);

    return D_u;
}

const SystemType Hyperparameters::CONTROLLER_SYSTEM_TYPE = {
    .x_type = CONTROLLER_MEMORY_TYPE,
    .u_type = COMMAND_TYPE,
    .z_type = MEASUREMENT_TYPE,
    .y_type = INPUT_TYPE
};
const SystemMatrices Hyperparameters::CONTROLLER_SYSTEM_MATRICES = {
    .getA = &sControllerGetA,
    .getB_u = &sControllerGetB_u,
    .getB_z = &sControllerGetB_z,
    .getC = &sControllerGetC,
    .getD_u = &sControllerGetD_u,
    .getD_z = nullptr
};

Matrix* const Hyperparameters::MOTOR_INPUT_CONVERTER_MATRIX = new Matrix(MOTOR_INPUT_TYPE, INPUT_TYPE,
    {{-1,  1,  1, -1},
     { 1, -1,  1, -1},
     {-1, -1, -1, -1},
     { 1,  1, -1, -1}}
);

//----- ACTUATOR PARAMETERS -----
const vector<int> Hyperparameters::MOTOR_ID_LIST = {1, 2, 3, 4};
string Hyperparameters::sGenerateMotorName(int motor_id) {
    return "m" + to_string(motor_id) + "_motor";
}

string Hyperparameters::sGenerateMotorPositionSrvName(string crazyflie_name, string motor_name) {
    return crazyflie_name + "/" + motor_name + "/set_position";
}
string Hyperparameters::sGenerateMotorVelocitySrvName(string crazyflie_name, string motor_name) {
    return crazyflie_name + "/" + motor_name + "/set_velocity";
}

//----- ANALYZER PARAMETERS -----
Variable* const Hyperparameters::IDEAL_FINAL_MEASUREMENT = new Variable(MEASUREMENT_TYPE, {
    0.0, 0.0, 0.0, 0.0, 0.0, 0.0 //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!4
});
double const Hyperparameters::SURVIVAL_TIME_REWARD = 1.0;
double const Hyperparameters::SURVIVED_REWARD = 10.0;

double Hyperparameters::sFinalErrorRewardFunction(Variable* final_error) {
    double final_error_reward = 0.0;

    final_error_reward += max(10 - 0.1 * final_error->get(Tag::x), 0.0);
    final_error_reward += max(10 - 0.1 * final_error->get(Tag::x), 0.0);
    final_error_reward += 1/(final_error->get(Tag::x) + 0.01);
    final_error_reward += 1/(final_error->get(Tag::roll) + 0.1);
    final_error_reward += max(10 - 0.1 * final_error->get(Tag::pitch), 0.0);
    final_error_reward += max(10 - 0.1 * final_error->get(Tag::yaw), 0.0);

    return final_error_reward;
}

//----- LOGGER PARAMETERS -----
const string Hyperparameters::LOG_FILE_PATH = "../logs/";
string Hyperparameters::sGenerateLogFileName(int iteration_number, string crazyflie_name) {
    return "log_iteration_" + to_string(iteration_number) + "_" + crazyflie_name + ".bag";
}

const string Hyperparameters::LOG_MSG_NAME = "logs";

pilot::Measurement Hyperparameters::sConvertMeasurement(Variable* measurement) {
    pilot::Measurement measurement_msg;

    measurement_msg.x = measurement->get(Tag::x);
    measurement_msg.y = measurement->get(Tag::y);
    measurement_msg.z = measurement->get(Tag::z);

    measurement_msg.roll = measurement->get(Tag::roll);
    measurement_msg.pitch = measurement->get(Tag::pitch);
    measurement_msg.yaw = measurement->get(Tag::yaw);

    return measurement_msg;
}
pilot::Command Hyperparameters::sConvertCommand(Variable* command) {
    pilot::Command command_msg;

    command_msg.accel = command->get(Tag::accel);
    command_msg.height = command->get(Tag::height);

    return command_msg;
}
pilot::MotorInput Hyperparameters::sConvertMotorInput(Variable* motor_input) {
    pilot::MotorInput motor_input_msg;

    motor_input_msg.m1_motor = motor_input->get(Tag::motor_1);
    motor_input_msg.m2_motor = motor_input->get(Tag::motor_2);
    motor_input_msg.m3_motor = motor_input->get(Tag::motor_3);
    motor_input_msg.m4_motor = motor_input->get(Tag::motor_4);

    return motor_input_msg;
}

//----- GENERAL PARAMETERS -----
template <typename T>
ros::ServiceClient Hyperparameters::sGetServiceClient(string srv_name, ros::NodeHandle* const node_handle) {
    ros::service::waitForService(srv_name);
    ros::spinOnce();

    ros::ServiceClient client = node_handle->serviceClient<T>(srv_name);
    return client;
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

template <typename T>
bool Hyperparameters::sCallService(T& srv_msg, ros::ServiceClient& client) {
    bool success = client.call(srv_msg);
    if(!success) {
        ROS_ERROR("Failed to call service.");
    }

    return success;
}

void Hyperparameters::sQuit(int sig) {
    ros::shutdown();
    exit(0);
}

template ros::ServiceClient Hyperparameters::sGetServiceClient<webots_ros::set_float>(string srv_name, ros::NodeHandle* const node_handle);

template bool Hyperparameters::sCallService<webots_ros::set_int>(string srv_name, webots_ros::set_int& srv_msg, ros::NodeHandle* const node_handle);
template bool Hyperparameters::sCallService<webots_ros::set_float>(string srv_name, webots_ros::set_float& srv_msg, ros::NodeHandle* const node_handle);

template bool Hyperparameters::sCallService<webots_ros::set_float>(webots_ros::set_float& srv_msg, ros::ServiceClient& client);
