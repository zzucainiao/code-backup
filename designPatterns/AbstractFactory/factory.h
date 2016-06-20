#ifndef __factory_h
#define __factory_h
#include "producta.h"
#include "productb.h"

class Factory {
public:
    virtual ProductA* createProductA() = 0;
    virtual ProductB* createProductB() = 0;
};

#endif
