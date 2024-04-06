#include "System.h"

System::System(SystemType system_type, SystemMatrices system_matrices, ros::Time init_time) :
    kSystemType_(system_type), kSystemMatrices_(system_matrices) {
    try {
        if(system_type.x_type != nullptr && system_type.y_type != nullptr) {
            time_ = init_time;
            x_ = new Variable(kSystemType_.x_type);

        } else {
            throw runtime_error("System error: x_type and y_type cannot be nullptr.");
        }
    } catch(exception& e) {
        cerr << e.what() << endl;
    }
}

Variable* System::apply(Variable* u, Variable* z, ros::Time time) {
    try {
        ros::Duration duration = time - time_;
        time_ = time;

        double dt = duration.toSec();

        bool is_valid_system = true;
        Variable* x = new Variable(kSystemType_.x_type);

        if(kSystemMatrices_.getA != nullptr && is_valid_system) {
            Matrix* A = kSystemMatrices_.getA(dt);

            is_valid_system *= A->isType(kSystemType_.x_type, kSystemType_.x_type);
            if(is_valid_system) {
                x = Variable::plus(x, A->apply(x_));
            }
        }
        if(kSystemMatrices_.getB_u != nullptr && u != nullptr && is_valid_system) {
            Matrix* B_u = kSystemMatrices_.getB_u(dt);

            is_valid_system *= u->isType(kSystemType_.u_type) && B_u->isType(kSystemType_.x_type, kSystemType_.u_type);
            if(is_valid_system) {
                x = Variable::plus(x, B_u->apply(u));
            }
        }
        if(kSystemMatrices_.getB_z != nullptr && z != nullptr && is_valid_system) {
            Matrix* B_z = kSystemMatrices_.getB_z(dt);

            is_valid_system *= z->isType(kSystemType_.z_type) && B_z->isType(kSystemType_.x_type, kSystemType_.z_type);
            if(is_valid_system) {
                x = Variable::plus(x, B_z->apply(z));
            }
        }
        if(is_valid_system) {
            x_ = x;
        }

        Variable* y = new Variable(kSystemType_.y_type);

        if(kSystemMatrices_.getC != nullptr && is_valid_system) {
            Matrix* C = kSystemMatrices_.getC(dt);

            is_valid_system *= C->isType(kSystemType_.y_type, kSystemType_.x_type);
            if(is_valid_system) {
                y = Variable::plus(y, C->apply(x_));
            }
        }
        if(kSystemMatrices_.getD_u != nullptr && u != nullptr && is_valid_system) {
            Matrix* D_u = kSystemMatrices_.getD_u(dt);

            is_valid_system *= u->isType(kSystemType_.u_type) && D_u->isType(kSystemType_.y_type, kSystemType_.u_type);
            if(is_valid_system) {
                y = Variable::plus(y, D_u->apply(u));
            }
        }
        if(kSystemMatrices_.getD_z != nullptr && z != nullptr && is_valid_system) {
            Matrix* D_z = kSystemMatrices_.getD_z(dt);

            is_valid_system *= z->isType(kSystemType_.z_type) && D_z->isType(kSystemType_.y_type, kSystemType_.z_type);
            if(is_valid_system) {
                y = Variable::plus(y, D_z->apply(z));
            }
        }
        if(is_valid_system) {
            return y;
        } else {
            throw runtime_error("System error: types don't match.");
        }
    }catch(exception& e) {
        cerr << e.what() << endl;
    }

    return nullptr;
}