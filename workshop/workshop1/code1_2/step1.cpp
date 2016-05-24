#include "step1.h"

#include <map>

#include <boost/foreach.hpp>

//#include "runner.h"

Step1 Step1::_step1("a:b:c:EF");

Step1::Step1(const std::string& options): Runner(options) {
    RunnerManager::instance()->install("Step1", this);
}

int Step1::run(const Arguments& arg) {
    typedef std::pair<std::string, std::string> value;
    BOOST_FOREACH(const value& v, arg) {
        std::cout << v.first << ": " << v.second << std::endl;
    }
    return 0;
}

