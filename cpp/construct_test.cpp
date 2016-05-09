#include <iostream>
using namespace std;

class A {
public:
    explicit A(int a): _a(a){
        cout << "A(int a)" << endl;
    }
    A(const A& x):_a(x._a) {
        cout << "A(const A& x)" << endl;
        return ;
    }
    const A& operator=(const A& x) {
        _a = x._a;
        cout << "operator=" << endl;
        return *this;
    }
private:
    int _a;
};
int main(int argc, char* argv[]) {
    A a(10);
    A b(a);
    A c = a;
    c = a;
    return 0;
}
/*
A(int a)
A(const A& x)
A(const A& x)
operator=
*/
