#ifndef _step1_h
#define _step1_h

#include "runner.h"

class Step1: public Runner {
public:
    virtual int run(const Arguments& arg) ;
private:
    Step1(const std::string& options);

    static Step1 _step1;
    //Step1 step1;
};
#endif // _step1_h

