#include <iostream>
using namespace std;

class A{
public:
    /*explicit*/ A(int a): _a(a) {
    }
    int _a;
};

int f(const A& x) {
    cout << "wangbing" << endl;
}
/*
int f(int x) {
    cout << "wangbing1" << endl;
}
*/
int main (){
    f( 10 );
    return 0;
}

