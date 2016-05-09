#include <iostream>
#include <cstdio>
#include <cstdarg>

using namespace std;

int sum(int cou, ...){
    if(cou <= 0)
        return 0;
    int sum = 0;
    va_list argptr;
    
    va_start(argptr, cou);
    for(int i=0; i<cou; ++i){
        sum += va_arg(argptr, int);
    }
    va_end(argptr);
    return sum;
}

int main(int argc, char* argv[])
{
    cout << "Hello world!" << endl;
    cout << sum(5, 1, 2, 3, 4, 5) << endl;
    return 0;
}
