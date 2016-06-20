#ifndef __concreteFactory2_h
#define __concreteFactory2_h
#include "factory.h"
#include "producta2.h"
#include "productb2.h"

class ConcreteFactory2: public Factory {
public:
    virtual ProductA* createProductA() override {
        return new ProductA2();
    }
    virtual ProductB* createProductB() override {
        return new ProductB2();
    }
};
#endif
