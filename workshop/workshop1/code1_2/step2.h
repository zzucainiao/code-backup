#ifndef _step2_h
#define _step2_h

#include "runner.h"

class Step2: public Runner {
public:
    virtual int run(const Arguments& arg) ;
private:
    Step2(const std::string& options);

    static Step2 _step2;
    //Step1 step1;
};
#endif // _step2_h

