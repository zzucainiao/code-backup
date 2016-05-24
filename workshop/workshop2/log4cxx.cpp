#include <algorithm>
#include <iostream>
#include <string>

#include <boost/format.hpp>
#include <boost/filesystem.hpp>

#include <log4cxx/logger.h>
#include <log4cxx/basicconfigurator.h>
#include <log4cxx/propertyconfigurator.h>

using namespace std;

static log4cxx::LoggerPtr logger(log4cxx::Logger::getLogger("arcs.main"));

int main () {
    string log_config("log.config");

    if (boost::filesystem::exists(log_config)) {
        log4cxx::PropertyConfigurator::configure(log_config);
    } else {
        log4cxx::BasicConfigurator::configure();
    }
    
    //sprintf(char*, "load file %s a=[%d] b={%d}", fileName, a, b);
    //cout << "load file " << fileName << "a=[" << a << "] b=[" << b << "]" << endl;
    //a % 10;
    //re operator%(a, 10);
    int a = 10, b = 10;
    LOG4CXX_ERROR(logger, boost::format("a = %d b = %d") % a % b);
    return 0;
}


