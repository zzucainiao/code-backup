#include <iostream>

using namespace std;

class A {
public:
    A(int a) {
        cout << "A(int )" << endl;
    }
    A(){
        cout << "A()" << endl;
        A(10.0);
    }
    A(double a) {
        cout << "A(double )" << endl;
        A(int(a));
    }
    ~A() {
        cout << "~A()" << endl;
    }
};

int main () {
    A();
    return 0;
}
/*
A()
A(double )
A(int )
~A()
~A()
~A()
*/
