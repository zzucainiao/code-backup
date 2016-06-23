#ifndef __adapter_h
#define __adapter_h
#include "target.h"
/*
                       原始类型      public      protected       private
             共有继承    后类型      public      protected       不可见
             私有继承    后类型      private     private         不可见
             保护继承    后类型      protected   protected       不可见
*/

class Adaptee {
private:
    int _test;
    void _testF() {
    }
public:
    double multiply(double x, double y) {
        return x * y;
    }
};

class Adapter: public Target {
private:
    Adaptee * _adaptee;
public:
    Adapter(Adaptee * adaptee): _adaptee(adaptee) {
    }
    double sqrt(double x) override {
        return _adaptee->multiply(x, x);
    }
};

class Adapter2: public Target, private Adaptee {
public:
    double sqrt(double x) override {
        //_test = 10; error can not be see
        //_testF(); error can not be see
        return multiply(x, x);
    }
};

#endif

