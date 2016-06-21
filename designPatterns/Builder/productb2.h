#ifndef __productb2_h
#define __productb2_h
#include <iostream>
#include "productb.h"

class ProductB2: public ProductB {
public:
    virtual void show() override {
        std::cout << "product B of factory 2" << std::endl;
    }
};

#endif
