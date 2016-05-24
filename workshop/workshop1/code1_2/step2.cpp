#include "step2.h"

#include <map>

#include <boost/foreach.hpp>

//#include "runner.h"

Step2 Step2::_step2("A:B:C:xy");

Step2::Step2(const std::string& options): Runner(options) {
    RunnerManager::instance()->install("Step2", this);
}

int Step2::run(const Arguments& arg) {
    typedef std::pair<std::string, std::string> value;
    BOOST_FOREACH(const value& v, arg) {
        std::cout << v.first << ": " << v.second << std::endl;
    }
    return 0;
}

