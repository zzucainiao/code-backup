#include "command.h"

int main () {
    ReceiverA *a1 = new ReceiverA(); 
    ReceiverA *a2 = new ReceiverA(); 
    ReceiverB *b1 = new ReceiverB(); 
    ReceiverB *b2 = new ReceiverB(); 
    
    Command *com1 = new SimpleCommand<ReceiverA>(a1, &ReceiverA::actionA);
    Command *com2 = new SimpleCommand<ReceiverB>(b1, &ReceiverB::actionB);

    com1->execute(); 
    com1->unexecute();
    std::cout << std::endl;

    Command *maco = new MacoCommand();
    maco->add(com1);
    maco->add(com2);
    maco->execute();
    maco->unexecute();
    
    delete maco;
    delete com1;
    delete com2;
    delete a1;
    delete a2;
    delete b1;
    delete b2;
    
    return 0;
}
