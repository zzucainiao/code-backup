#include <unistd.h>

#include <iostream>

#include "step1.h"

int main (int argc, char** argv) {
    if(argc < 2) {
        return RunnerManager::help();
    }
    RunnerPtr runner = RunnerManager::instance()->get(std::string(argv[1]));
    if(runner == NULL) {
        return RunnerManager::help();
    }
    int c;
    Arguments args;
    while((c = getopt(argc-1, argv+1, runner->getOptions().c_str())) != -1) {
        std::string arg(1, c);
        std::string value("?");
        if(optarg != NULL) {
            value = std::string(optarg);
        } 
        args.insert( std::make_pair(arg, value));
    }
    return runner->run(args);
}
