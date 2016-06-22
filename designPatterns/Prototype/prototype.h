#ifndef __prototype_h
#define __prototype_h
#include <iostream>

class Prototype {
public:
    virtual Prototype * clone() = 0;
    virtual void show()  = 0;
};

class ConcretePrototype : public Prototype {
public:
    virtual ConcretePrototype * clone() override {
        return new ConcretePrototype(*this);
    }
    virtual void show() override {
        std::cout << "this is prototype" << std::endl;
    }
};
#endif

