#include "component.h"

int main () {
    Component* composite1 = new Composite();

    composite1->add( GET("LeafA") );
    composite1->add( GET("LeafA") );
    
    Component* composite2 = new Composite();
    composite2->add( GET("LeafB") );
    composite2->add( GET("LeafA") );
    composite2->add( composite1 );
    composite2->draw(10);

    Children* children = composite2->getChildren();

    std::cout << std::endl;
    int i = 11;
    for(typename Children::iterator it = children->begin(); it != children->end(); ++it) {
        (*it)->draw(i);
        i += 11;
    }
    return 0;
}
