#include "Sensor.h"

Sensor::Sensor(pilot::SimulationParameters simulation_parameters, ros::NodeHandle* node_handle) :
    kCrazyflieName_(simulation_parameters.crazyflie_name),
    kNodeHandle_(node_handle),
    kGPSSubscriber_(initGPS()), 
    kIMUSubscriber_(initIMU()) {}

ros::Subscriber Sensor::initGPS() {
    webots_ros::set_int enable_gps_srv_msg;
    enable_gps_srv_msg.request.value = Hyperparameters::SENSOR_SAMPLING_TIME_STEP;

    ros::Subscriber gps_subscriber;

    if(Hyperparameters::sCallService<webots_ros::set_int>(Hyperparameters::sGenerateGPSEnableSrvName(kCrazyflieName_), enable_gps_srv_msg, kNodeHandle_)) {
        gps_subscriber = kNodeHandle_->subscribe(Hyperparameters::sGenerateGPSValuesTpcName(kCrazyflieName_), 1, &Sensor::GPSValuesCallback, this);

        while(gps_subscriber.getNumPublishers() == 0) {}
    }

    return gps_subscriber;
}

ros::Subscriber Sensor::initIMU() {
    webots_ros::set_int enable_imu_srv_msg;
    enable_imu_srv_msg.request.value = Hyperparameters::SENSOR_SAMPLING_TIME_STEP;

    ros::Subscriber imu_subscriber;
    if(Hyperparameters::sCallService<webots_ros::set_int>(Hyperparameters::sGenerateIMUEnableSrvName(kCrazyflieName_), enable_imu_srv_msg, kNodeHandle_)) {
        imu_subscriber = kNodeHandle_->subscribe(Hyperparameters::sGenerateIMUValuesTpcName(kCrazyflieName_), 1, &Sensor::IMUValuesCallback, this);

        while(imu_subscriber.getNumPublishers() == 0) {}
    }

    return imu_subscriber;
}

Variable* Sensor::addGPSReadings(Variable* measurement) { 
    double x = gps_readings_.point.x;
    double y = gps_readings_.point.y;
    double z = gps_readings_.point.z;

    measurement->set(Tag::x, x);
    measurement->set(Tag::y, y);
    measurement->set(Tag::z, z);

    return measurement;
}

Variable* Sensor::addIMUReadings(Variable* measurement) {
    double x = imu_readings_.orientation.x;
    double y = imu_readings_.orientation.y;
    double z = imu_readings_.orientation.z;
    double w = imu_readings_.orientation.w;

    double roll = atan2(y * z + w * x, 1/2 - (x * x + y * y)) + M_PI / 2;
    double pitch = asin(-2 * (x * z - w * y));
    double yaw = atan2(x * y + w * z, 1/2 - (y * y + z * z));

    measurement->set(Tag::roll, roll);
    measurement->set(Tag::pitch, pitch);
    measurement->set(Tag::yaw, yaw);

    return measurement;
}

Variable* Sensor::read() {
    Variable* measurement = new Variable(Hyperparameters::MEASUREMENT_TYPE);

    measurement = addGPSReadings(measurement);
    measurement = addIMUReadings(measurement);

    return measurement;
}

void Sensor::GPSValuesCallback(const geometry_msgs::PointStamped& gps_readings) {
    gps_readings_ = gps_readings;
}

void Sensor::IMUValuesCallback(const sensor_msgs::Imu& imu_readings) {
    imu_readings_ = imu_readings;
}