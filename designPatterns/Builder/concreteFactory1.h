#ifndef __concreteFactory1_h
#define __concreteFactory1_h
#include "factory.h"
#include "producta1.h"
#include "productb1.h"

class ConcreteFactory1: public Factory {
public:
    virtual ProductA* createProductA() override {
        return new ProductA1();
    }
    virtual ProductB* createProductB() override {
        return new ProductB1();
    }
};
#endif
