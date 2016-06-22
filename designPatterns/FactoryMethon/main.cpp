#include "creator.h"

int main () {
    Creator * creator = new StandardCreator<MyProduct>();
    Product* product = creator->createProduct();
    product->show();
    delete creator;
    delete product;
    return 0;
}
