#pragma once

#include <string>
#include <vector>
#include <algorithm>

#include "ros/ros.h"
#include <webots_ros/set_int.h>
#include <webots_ros/set_float.h>
#include <pilot/Command.h>
#include <pilot/Measurement.h>
#include <pilot/MotorInput.h>

#include "Type.h"
#include "Variable.h"
#include "Matrix.h"
#include "System.h"

using namespace std;

struct PIDGains {
    double P;
    double I;
    double D;
};

class Hyperparameters {
    public:
    //----- TYPES -----
    static Type* const MEASUREMENT_TYPE;
    //static Type* const SENSOR_MEMORY_TYPE;
    //static Type* const PROCESSED_MEASUREMENT_TYPE;

    static Type* const COMMAND_TYPE;
    //static Type* const PLANNER_MEMORY_TYPE;
    //static Type* const PROCESSED_COMMAND_TYPE;

    static Type* const CONTROLLER_MEMORY_TYPE;
    static Type* const INPUT_TYPE;
    static Type* const MOTOR_INPUT_TYPE;

    //----- PILOT PARAMETERS -----
        static string sGenerateSimulateActionName(string pilot_name);

    //----- SENSOR PARAMETERS -----
        static const int SENSOR_SAMPLING_TIME_STEP;
        static const int SENSOR_SAMPLING_FREQUENCY;

        static string sGenerateGPSEnableSrvName(string crazyflie_name);
        static string sGenerateIMUEnableSrvName(string crazyflie_name);
        static string sGenerateGPSValuesTpcName(string crazyflie_name);
        static string sGenerateIMUValuesTpcName(string crazyflie_name);

    //----- PLANNER PARAMETERS -----
        static Variable* sConvertCommand(pilot::Command command);

    //----- CONTROLLER PARAMETERS -----
        /*
        static const PIDGains D_ROLL_PID_GAINS;
        static const PIDGains PITCH_PID_GAINS;
        static const PIDGains YAW_PID_GAINS;

        static Matrix* sSensorGetA(double dt);
        static Matrix* sSensorGetB_z(double dt);
        static Matrix* sSensorGetC(double dt);
        static Matrix* sSensorGetD_z(double dt);

        static Matrix* sPlannerGetA(double dt);
        static Matrix* sPlannerGetB_u(double dt);
        static Matrix* sPlannerGetC(double dt);
        static Matrix* sPlannerGetD_u(double dt);

        static Matrix* sControllerGetA(double dt);
        static Matrix* sControllerGetB_u(double dt);
        static Matrix* sControllerGetB_z(double dt);
        static Matrix* sControllerGetC(double dt);
        static Matrix* sControllerGetD_u(double dt);

        static const SystemType SENSOR_SYSTEM_TYPE;
        static const SystemMatrices SENSOR_SYSTEM_MATRICES;

        static const SystemType PLANNER_SYSTEM_TYPE;
        static const SystemMatrices PLANNER_SYSTEM_MATRICES;

        static const SystemType CONTROLLER_SYSTEM_TYPE;
        static const SystemMatrices CONTROLLER_SYSTEM_MATRICES;

        static Matrix* const MOTOR_INPUT_CONVERTER_MATRIX;
        */
        static const PIDGains HEIGHT_PID_GAINS;
        static const PIDGains ROLL_PID_GAINS;
        static const PIDGains PITCH_PID_GAINS;
        static const PIDGains YAW_PID_GAINS;

        static Matrix* sControllerGetA(double dt);
        static Matrix* sControllerGetB_u(double dt);
        static Matrix* sControllerGetB_z(double dt);
        static Matrix* sControllerGetC(double dt);
        static Matrix* sControllerGetD_u(double dt);

        static const SystemType CONTROLLER_SYSTEM_TYPE;
        static const SystemMatrices CONTROLLER_SYSTEM_MATRICES;

        static Matrix* const MOTOR_INPUT_CONVERTER_MATRIX;

    //----- ACTUATOR PARAMETERS -----
        static const vector<int> MOTOR_ID_LIST;
        static string sGenerateMotorName(int motor_id);

        static string sGenerateMotorPositionSrvName(string crazyflie_name, string motor_name);
        static string sGenerateMotorVelocitySrvName(string crazyflie_name, string motor_name);

    //----- ANALYZER PARAMETERS -----
        static Variable* const IDEAL_FINAL_MEASUREMENT;
        static double const SURVIVAL_TIME_REWARD;
        static double const SURVIVED_REWARD;

        static double sFinalErrorRewardFunction(Variable* final_error);

    //----- LOGGER PARAMETERS -----
        static const string LOG_FILE_PATH;
        static string sGenerateLogFileName(int iteration_number, string crazyflie_name);

        static const string LOG_MSG_NAME;

        static pilot::Measurement sConvertMeasurement(Variable* measurement);
        static pilot::Command sConvertCommand(Variable* command);
        static pilot::MotorInput sConvertMotorInput(Variable* motor_input);

    //----- GENERAL PARAMETERS -----
        template <typename T>
        static ros::ServiceClient sGetServiceClient(string srv_name, ros::NodeHandle* const node_handle);

        template <typename T>
        static bool sCallService(string srv_name, T& srv_msg, ros::NodeHandle* const node_handle);

        template <typename T>
        static bool sCallService(T& srv_msg, ros::ServiceClient& client);

        static void sQuit(int sig);
};