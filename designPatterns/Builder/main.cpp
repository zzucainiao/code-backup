#include "concreteFactory1.h"
#include "concreteFactory2.h"
#include "complexProduct.h"
#include <cstdlib>
#include <iostream>

int main (int argc, char ** argv) {
    if(argc != 2) {
        std::cout << "Usage: " << argv[0] << " factory[1/2]" << std::endl;
        exit(0);
    }
    Factory *factory = NULL;
    if(argv[1][0] == '1') {
        factory = new ConcreteFactory1();
    } else {
        factory = new ConcreteFactory2();
    }
    Builder builder(factory);
    ComplexProduct * cp = builder.createCP();
    cp->show();
    delete factory;
    return 0;
}
