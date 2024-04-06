#include "Type.h"

vector<Type*> Type::sInstances = {};

vector<Type*> Type::getInstances() {
    return sInstances;
}

Type::Type(vector<Tag> tags) : kTags_(tags), kSize_((int)tags.size()) {
    sInstances.push_back(this);
}

int Type::getSize() const {
    return kSize_;
}

vector<Tag> Type::getTags() const {
    return kTags_;
}

int Type::find(Tag tag) const {
    try {
        for(int i=0; i<kSize_; i++) {
            if(kTags_.at(i) == tag) {
                return i;
            }
        }

        throw runtime_error("Type error: tag not found.");

    } catch(exception& e) {
        cerr << e.what() << endl;
    }

    return -1;
}