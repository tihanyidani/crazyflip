#pragma once

#include "ros/ros.h"

#include <iostream>
#include <functional>

#include "Type.h"
#include "Variable.h"
#include "Matrix.h"

using namespace std;

struct SystemType {
    Type* x_type;
    Type* u_type;
    Type* z_type;
    Type* y_type;
};

struct SystemMatrices {
    function<Matrix*(double)> getA;
    function<Matrix*(double)> getB_u;
    function<Matrix*(double)> getB_z;
    function<Matrix*(double)> getC;
    function<Matrix*(double)> getD_u;
    function<Matrix*(double)> getD_z;
};

class System {
    private:
        const SystemType kSystemType_;
        const SystemMatrices kSystemMatrices_;

    private:
        ros::Time time_;
        Variable* x_;

    public:
        System(SystemType system_type, SystemMatrices system_matrices, ros::Time init_time);

        Variable* apply(Variable* u, Variable* z, ros::Time time);
};