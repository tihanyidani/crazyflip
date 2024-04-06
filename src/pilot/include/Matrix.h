#pragma once

#include <vector>
#include <utility>

#include "Type.h"
#include "Variable.h"

using namespace std;

class Matrix {
    public:
        static Matrix* plus(Matrix* a_matrix, Matrix* b_matrix);
        static Matrix* times(Matrix* a_matrix, Matrix* b_matrix);

    private:
        Type* const kRowType_;
        Type* const kColType_;
        const int kRowSize_;
        const int kColSize_;
    
    private:
        vector<vector<double>> data_;

    public:
        Matrix(Type* row_type, Type* col_type);
        Matrix(Type* row_type, Type* col_type, vector<vector<double>> data);
        
        pair<int, int> getSize();
        pair<Type*, Type*> getType();
        bool isType(Type* row_type, Type* col_type);

        pair<int, int> find(Tag row_tag, Tag col_tag);

        vector<vector<double>> get();
        double get(Tag row_tag, Tag col_tag);

        void set(vector<vector<double>> data);
        void set(Tag row_tag, Tag col_tag, double value);

        Variable* apply(Variable* in_variable);
};