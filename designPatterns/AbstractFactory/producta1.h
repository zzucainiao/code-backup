#ifndef __producta1_h
#define __producta1_h
#include <iostream>
#include "producta.h"

class ProductA1: public ProductA {
public:
    virtual void show() override {
        std::cout << "product A of factory 1" << std::endl;
    }
};

#endif
