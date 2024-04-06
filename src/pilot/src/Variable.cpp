#include "Variable.h"

Variable* Variable::plus(Variable* a_variable, Variable* b_variable) {
    try {
        Type* a_type = a_variable->getType();
        Type* b_type = b_variable->getType();

        if(a_type == b_type) {
            Variable* out_variable = new Variable(a_type);

            vector<double> a_data = a_variable->get();
            vector<double> b_data = b_variable->get();
            vector<double> out_data = out_variable->get();

            int out_size = out_variable->getSize();
            for(int i=0; i<out_size; i++) {
                out_data.at(i) = a_data.at(i) + b_data.at(i);
            }

            out_variable->set(out_data);
            return out_variable;

        } else {
            throw runtime_error("Variable error: unable to add variables, types don't match.");
        }
    } catch(exception& e) {
        cerr << e.what() << endl;
    }

    return nullptr;
}

Variable* Variable::minus(Variable* a_variable, Variable* b_variable) {
    try {
        Type* a_type = a_variable->getType();
        Type* b_type = b_variable->getType();

        if(a_type == b_type) {
            Variable* out_variable = new Variable(a_type);

            vector<double> a_data = a_variable->get();
            vector<double> b_data = b_variable->get();
            vector<double> out_data = out_variable->get();

            int out_size = out_variable->getSize();
            for(int i=0; i<out_size; i++) {
                out_data.at(i) = a_data.at(i) - b_data.at(i);
            }

            out_variable->set(out_data);
            return out_variable;

        } else {
            throw runtime_error("Variable error: unable to substruct variables, types don't match.");
        }
    } catch(exception& e) {
        cerr << e.what() << endl;
    }

    return nullptr;
}

Variable::Variable(Type* type) : kType_(type), kSize_(type->getSize()) {
    data_ = vector<double>(kSize_, 0.0);
} 

Variable::Variable(Type* type, vector<double> data) : kType_(type), kSize_(type->getSize()) {
    set(data);
}

int Variable::getSize() {
    return kSize_;
}

Type* Variable::getType() {
    return kType_;
}

bool Variable::isType(Type* type) {
    return kType_ == type;
}

int Variable::find(Tag tag) {
    return kType_->find(tag);
}

vector<double> Variable::get() {
    return data_;
}

double Variable::get(Tag tag) {
    return data_.at(find(tag));
}

void Variable::set(vector<double> data) {
    try {
        if(kSize_ == (int)data.size()) {
            data_ = data;
        } else {
            throw runtime_error("Variable error: type and data sizes don't match.");
        }
    } catch(exception& e) {
        cerr << e.what() << endl;
    }
}

void Variable::set(Tag tag, double value) {
    data_.at(find(tag)) = value;
}