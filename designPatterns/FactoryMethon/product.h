#ifndef __product_h
#define __product_h
#include <iostream>

class Product {
public:
    virtual void show() {
        std::cout << "default show" << std::endl;
    }
};

class MyProduct: public Product {
public:
    virtual void show() override {
        std::cout << "My product show" << std::endl;
    } 
};
#endif
