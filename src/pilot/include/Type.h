#pragma once

#include <vector>
#include <iostream>

using namespace std;

/*
enum class Tag {
    x, y, z,
    roll, pitch, yaw,
    d_roll,
    accel, dd_roll,
    e_d_roll, e_pitch, e_yaw,
    i_e_d_roll, i_e_pitch, i_e_yaw,
    d_e_d_roll, d_e_pitch, d_e_yaw,
    motor_1, motor_2, motor_3, motor_4
};
*/
enum class Tag {
    x, y, z,
    roll, pitch, yaw,
    height, accel,
    e_height, e_roll, e_pitch, e_yaw,
    i_e_height, i_e_roll, i_e_pitch, i_e_yaw,
    d_e_height, d_e_roll, d_e_pitch, d_e_yaw,
    motor_1, motor_2, motor_3, motor_4
};

class Type {
    private:
        static vector<Type*> sInstances;
    
    public:
        static vector<Type*> getInstances();

    private:
        const vector<Tag> kTags_;
        const int kSize_;

    public:
        Type(vector<Tag> tags);

        int getSize() const;
        vector<Tag> getTags() const;

        int find(Tag tag) const;
};