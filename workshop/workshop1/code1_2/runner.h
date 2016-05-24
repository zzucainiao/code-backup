#ifndef _runner_h
#define _runner_h

#include <iostream>
#include <string>
#include <map>

typedef std::map<std::string, std::string> Arguments;
class Runner {
public:
    Runner(const std::string& options): _options(options) {
    }
    virtual int run(const Arguments& arg) = 0;
    virtual ~Runner(){
    }
    const std::string& getOptions() const {
        return _options;
    }

private:
    std::string _options;
};

typedef Runner* RunnerPtr;

class RunnerManager {
public:
    void install(const std::string& name, RunnerPtr p) {
        _runners.insert( std::make_pair(name, p) );
    }
    static RunnerManager* instance() {
        static RunnerManager manager;
        return &manager;
    }
    RunnerPtr get(const std::string& name) const {
        if(_runners.find(name) == _runners.end()) {
            return NULL;
        }
        return _runners.find(name)->second; 
    }

    static int help() {
        std::cout << "Usage: XXX" << std::endl;
        return 1;
    }
private:
    std::map<std::string, RunnerPtr> _runners;
};
#endif //_runner_h

