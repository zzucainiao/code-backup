#include <iostream>

using namespace std;

class A {
public:
    A(int a) {
        cout << "A(int )" << endl;
    }
    A(): A(10.0){
        cout << "A()" << endl;
    }
    A(double a): A(int(a)) {
        cout << "A(double )" << endl;
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
A(int )
A(double )
A()
~A()
*/
