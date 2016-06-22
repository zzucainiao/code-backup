#ifndef __client_h
#define __client_h
#include "prototype.h"

class Client {
public:
    Client(Prototype * x) {
        _x = x;
    }
    void getClone() {
        Prototype *y = _x->clone();
        y->show();
        delete y;
    }
private:
    Prototype * _x;
};
#endif
