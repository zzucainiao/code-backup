#ifndef __command_h
#define __command_h
#include <iostream>
#include <vector>

class Command {
public:
    virtual void execute() = 0;
    virtual void unexecute() = 0;
    virtual void add(Command *command){
    };
};

template<class Receiver>
class SimpleCommand: public Command {
private:
    typedef void (Receiver:: *Action)();
    Receiver * _receiver;
    Action _action;
public:
    SimpleCommand(Receiver *receiver, Action action): _receiver(receiver), _action(action) {
    } 
    virtual void execute() override {
        std::cout << "execute" << std::endl;
        (_receiver->*_action)();
    }
    virtual void unexecute() override {
        std::cout << "unexecute" << std::endl;
    }
};

class MacoCommand: public Command {
private:
    std::vector<Command*> commands;
public:
    virtual void execute() override {
        for(Command* command: commands) {
            command->execute();
        }
    }
    virtual void unexecute() override {
        for(Command* command: commands) {
            command->unexecute();
        }
    }
    void add(Command* command) override {
        commands.push_back(command);
    }
};

class ReceiverA {
public:
    void actionA() {
        std::cout << "reveiverA action" << std::endl;
    }
};

class ReceiverB {
public:
    void actionB() {
        std::cout << "reveiverB action" << std::endl;
    }
};
#endif
