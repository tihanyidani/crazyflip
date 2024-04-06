#include "Matrix.h"

Matrix* Matrix::plus(Matrix* a_matrix, Matrix* b_matrix) {
    try {
        pair<Type*, Type*> a_type = a_matrix->getType();
        pair<Type*, Type*> b_type = b_matrix->getType();

        if(a_type.first == b_type.first && a_type.second == b_type.second) {
            Matrix* out_matrix = new Matrix(a_type.first, a_type.second);

            vector<vector<double>> a_data = a_matrix->get();
            vector<vector<double>> b_data = b_matrix->get();
            vector<vector<double>> out_data = out_matrix->get();

            pair<int, int> out_size = out_matrix->getSize();
            for(int i=0; i<out_size.first; i++) {
                for(int j=0; j<out_size.second; j++) {
                    out_data.at(i).at(j) = a_data.at(i).at(j) + b_data.at(i).at(j);
                }
            }

            out_matrix->set(out_data);
            return out_matrix;

        } else {
            throw runtime_error("Matrix error: unable to add matrices, types don't match.");
        }
    } catch(exception& e) {
        cerr << e.what() << endl;
    }

    return nullptr;
}

Matrix* Matrix::times(Matrix* a_matrix, Matrix* b_matrix) {
    try {
        pair<Type*, Type*> a_type = a_matrix->getType();
        pair<Type*, Type*> b_type = b_matrix->getType();

        if(a_type.second == b_type.first) {
            Matrix* out_matrix = new Matrix(a_type.first, b_type.second);

            vector<vector<double>> a_data = a_matrix->get();
            vector<vector<double>> b_data = b_matrix->get();
            vector<vector<double>> out_data = out_matrix->get();

            pair<int, int> out_size = out_matrix->getSize();
            int mid_size = a_matrix->getSize().second;
            for(int i=0; i<out_size.first; i++) {
                for(int j=0; j<out_size.second; j++) {
                    for(int k=0; k<mid_size; k++) {
                        out_data.at(i).at(j) += a_data.at(i).at(k) * b_data.at(k).at(j);
                    }
                }
            }

            out_matrix->set(out_data);
            return out_matrix;

        } else {
            throw runtime_error("Matrix error: unable to multiply matrices, types don't match.");
        }
    } catch(exception& e) {
        cerr << e.what() << endl;
    }

    return nullptr;
}

Matrix::Matrix(Type* row_type, Type* col_type) : 
    kRowType_(row_type), kColType_(col_type), kRowSize_(row_type->getSize()), kColSize_(col_type->getSize()) {
    for(int i=0; i<kRowSize_; i++) {
        data_.push_back(vector<double>(kColSize_, 0.0));
    }
} 

Matrix::Matrix(Type* row_type, Type* col_type, vector<vector<double>> data) : 
kRowType_(row_type), kColType_(col_type), kRowSize_(row_type->getSize()), kColSize_(col_type->getSize()) {
    set(data);
}

pair<int, int> Matrix::getSize() {
    return {kRowSize_, kColSize_};
}

pair<Type*, Type*> Matrix::getType() {
    return {kRowType_, kColType_};
}

bool Matrix::isType(Type* row_type, Type* col_type) {
    return kRowType_ == row_type && kColType_ == col_type;
}

pair<int, int> Matrix::find(Tag row_tag, Tag col_tag) {
    return {kRowType_->find(row_tag), kColType_->find(col_tag)};
}

vector<vector<double>> Matrix::get() {
    return data_;
}

double Matrix::get(Tag row_tag, Tag col_tag) {
    pair<int, int> indecies = find(row_tag, col_tag);
    return data_.at(indecies.first).at(indecies.second);
}

void Matrix::set(vector<vector<double>> data) {
    try {
        if(kRowSize_ == (int)data.size() && kColSize_ == (int)data.at(0).size()) {
            data_ = data;
        } else {
            throw runtime_error("Matrix error: types and matrix sizes don't match.");
        }
    } catch(exception& e) {
        cerr << e.what() << endl;
    }
}

void Matrix::set(Tag row_tag, Tag col_tag, double value) {
    pair<int, int> indecies = find(row_tag, col_tag);
    data_.at(indecies.first).at(indecies.second) = value;
}

Variable* Matrix::apply(Variable* in_variable) {
    try {
        if(kColType_ == in_variable->getType()) {
            Variable* out_variable = new Variable(kRowType_);

            vector<double> in_data = in_variable->get();
            vector<double> out_data = out_variable->get();

            for(int i=0; i<kRowSize_; i++) {
                for(int j=0; j<kColSize_; j++) {
                    out_data.at(i) += data_.at(i).at(j) * in_data.at(j);
                }
            }

            out_variable->set(out_data);
            return out_variable;

        } else {
            throw runtime_error("Matrix error: column type and variable type don't match.");
        }
    } catch(exception& e) {
        cerr << e.what() << endl;
    }

    return nullptr;
}