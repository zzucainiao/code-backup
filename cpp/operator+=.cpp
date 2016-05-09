#include <iostream>
using namespace std;

class A{
public:
    A(int a=0): _a(a) {
        cout << "construct" << endl;
    }
    A & operator += (const A & x) {
        cout << "operator +=" << endl;
        _a += x._a;
        return *this;
    }
    
    const A operator +(const A & x) {
        cout << "operator +" << endl;
        return A(*this) += x;
        //A re(*this); 多一次构造函数
        //return re += x;
    }
    
    int _a;
};

int main(int argc, char* argv[]) {
    cout << "Hello world!" << endl;
    A a(10), b(20);
    a += b;
    A c(20);
    c = a + b;
    return 0;
}
