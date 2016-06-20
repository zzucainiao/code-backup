#ifndef __producta2_h
#define __producta2_h
#include <iostream>
#include "producta.h"

class ProductA2: public ProductA {
public:
    virtual void show() override {
        std::cout << "product A of factory 2" << std::endl;
    }
};

#endif
