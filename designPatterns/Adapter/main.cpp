#include "adapter.h"
#include <iostream>

int main() {
    Adaptee *adaptee = new Adaptee();
    Target *target = new Adapter(adaptee);
    std::cout << target->sqrt(10) << std::endl;

    Target *target2 = new Adapter2();
    std::cout << target2->sqrt(10) << std::endl;
    return 0;
}
