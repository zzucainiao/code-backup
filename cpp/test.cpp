#include <iostream>
using namespace std;

class A {
    int _a = 10, _b = 20;
public:
    A(int a, int b): _a(a), _b(b) {
        cout << "const" << endl;
    }
    void show() const {
        cout << _a << " " << _b << endl;
    }
};

void f(int a, int b) {
    static A c(a, b);
    c.show();
    return ;
}

int main(int argc, char* argv[]) {
    for(int i = 0; i < 10; ++i) {
        f(i, i+10);
    }
    return 0;
}
