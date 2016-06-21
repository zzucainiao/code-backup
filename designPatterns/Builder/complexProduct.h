#ifndef __complexProduct_h
#define __complexProduct_h
#include "producta.h"
#include "productb.h"
#include "factory.h"
#include <vector>

class ComplexProduct {
private:
    std::vector<ProductA*> _a;
    std::vector<ProductB*> _b;
public:
    void addA(ProductA *pa) {
        _a.push_back(pa);
    }
    void addB(ProductB *pb) {
        _b.push_back(pb);
    }
    void show() {
        std::cout << "complex product: include" << std::endl;
        for(auto pa : _a) {
            pa->show();
        }
        for(auto pb : _b) {
            pb->show();
        }
    }
    ~ComplexProduct() {
        for(auto pa : _a) {
            delete pa;
        }
        for(auto pb : _b) {
            delete pb;
        }
    }
};

class Builder {
private:
    ComplexProduct *cp;
    Factory *factory;
public:
    Builder(Factory *f) {
        factory = f;
        cp = new ComplexProduct();
    }
    ComplexProduct* createCP() {
        cp->addA(factory->createProductA());
        cp->addA(factory->createProductA());
        cp->addB(factory->createProductB());
        cp->addB(factory->createProductB());
        return cp;
    }
    ComplexProduct* getCP() {
        return cp;
    }
    ~Builder() {
        delete cp;
    }
};
#endif
