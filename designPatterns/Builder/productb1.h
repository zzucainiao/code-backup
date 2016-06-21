#ifndef __productb1_h
#define __productb1_h
#include <iostream>
#include "productb.h"

class ProductB1: public ProductB {
public:
    virtual void show() override {
        std::cout << "product B of factory 1" << std::endl;
    }
};

#endif
