#pragma once

#include <vector>
#include <iostream>

#include "Type.h"

using namespace std;

class Variable {
    public:
        static Variable* plus(Variable* a_variable, Variable* b_variable);
        static Variable* minus(Variable* a_variable, Variable* b_variable);

    private:
        Type* const kType_;
        const int kSize_;
    
    private:
        vector<double> data_;

    public:
        Variable(Type* type);
        Variable(Type* type, vector<double> data);

        int getSize();
        Type* getType();
        bool isType(Type* type);

        int find(Tag tag);

        vector<double> get();
        double get(Tag tag);

        void set(vector<double> data);
        void set(Tag tag, double value);
};