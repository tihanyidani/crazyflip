#pragma once

#include <string>

#include "ros/ros.h"
#include <webots_ros/get_uint64.h>
#include <webots_ros/node_get_field.h>
#include <webots_ros/field_import_node_from_string.h>
#include <webots_ros/field_remove.h>
#include <pilot/Box.h>

using namespace std;

struct Position {
    double x;
    double y;
    double z;
};

struct Box {
    double x_min;
    double x_max;
    double y_min;
    double y_max;
    double z_min;
    double z_max;
};

class Hyperparameters {
    public:
        static const string ORCHESTRATOR_NODE_NAME;
        static const string GET_ROOT_SRV_NAME;
        static const string GET_FIELD_SRV_NAME;
        static const string FIELD_NAME;
        static const string IMPORT_NODE_SRV_NAME;
        static const string REMOVE_NODE_SRV_NAME;

        static string sGeneratePilotName(int pilot_id);
        static string sGeneratePilotLaunchString(string pilot_name);
        static string sGenerateSimulateActionName(string pilot_name);

        static string sGenerateCrazyflieName(int pilot_id);
        static const Position BASE_POSITION;
        static const Position TRANSLATION_VECTOR; 
        static const Box BASE_BOX;
        static Position sGenerateStartingPosition(int pilot_id);
        static Box sGenerateFlyBox(Position starting_position);
        static string sGenerateNodeString(string crazyflie_name, Position starting_position);
        static pilot::Box sConvertBox(Box box);

        template <typename T>
        static bool sCallService(string srv_name, T& srv_msg, ros::NodeHandle* const node_handle);

        static void sQuit(int sig);
};