#ifndef __creator_h
#define __creator_h
#include "product.h"

class Creator {
public:
    virtual Product* createProduct() = 0;
};

template<class TheProduct>
class StandardCreator: public Creator {
public:
    virtual Product* createProduct() override {
        return new TheProduct;
    }
};
#endif
