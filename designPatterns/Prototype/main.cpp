#include "client.h"

int main() {
    Prototype *proto = new ConcretePrototype();
    Client client(proto);
    client.getClone();
    delete proto;
    return 0;
}
