#include <iostream>
#include <functional>
#include <map>
#include <string>

using namespace std;

class add {
    int operator()(int a, int b) const {
        return a + b;
    }
};

int plu(int a, int b) {
    return a + b;
}

class A {
private:
    int _a = 0;
public:
    A(){}
    explicit A(int a): _a(a) {
    }
    explicit operator bool() const {
        return _a != 0;
    }
    explicit operator int() const {
        return _a;
    }
};

auto divide = [](int a, int b){return a / b;};
int main(int argc, char* argv[]) {
    map<string, function< int(int, int) > > opt{/*{"+", add()},*/ 
                                                {"+", plu},
                                                {"-", minus<int>()},
                                                {"/", divide}, 
                                                {"*", [](int a, int b){return a*b;}}};
    cout << opt["+"](8, 4) << endl;
    cout << opt["-"](8, 4) << endl;
    cout << opt["*"](8, 4) << endl;
    cout << opt["/"](8, 4) << endl;
    A a;
    if(a) {
        cout << "wangbing" << endl;
    } else {
        cout << "hehe" << endl;
    }
    int b = static_cast<int>(a) + 10;

    cout << b << endl;
    cout << "Hello world!" << endl;

    return 0;
}
