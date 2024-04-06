#pragma once

#include "ros/ros.h"
#include <webots_ros/set_int.h>
#include <geometry_msgs/PointStamped.h>
#include <sensor_msgs/Imu.h>
#include <pilot/SimulationParameters.h>

#include <string>
#include <math.h>

#include "Variable.h"
#include "Hyperparameters.h"

using namespace std;

class Sensor {
    private:
        const string kCrazyflieName_;
        ros::NodeHandle* kNodeHandle_;

        const ros::Subscriber kGPSSubscriber_;
        const ros::Subscriber kIMUSubscriber_;

    private:
        geometry_msgs::PointStamped gps_readings_;
        sensor_msgs::Imu imu_readings_;

    private:
        ros::Subscriber initGPS();
        ros::Subscriber initIMU();

        Variable* addGPSReadings(Variable* measurement);
        Variable* addIMUReadings(Variable* measurement);

    public:
        Sensor(pilot::SimulationParameters simulation_parameters, ros::NodeHandle* node_handle);

        Variable* read();

        void GPSValuesCallback(const geometry_msgs::PointStamped& gps_readings);
        void IMUValuesCallback(const sensor_msgs::Imu& imu_readings);
};