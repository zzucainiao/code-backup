#include <iostream>
#include <string>
#include <fstream>
#include <vector>
using namespace std;

class A {
private:
    int _a = 10, _b = 10;
public:
    constexpr A(int a, int b): _a(a), _b(b) {
    }
    A() = default; //使用默认构造函数，内联
//    A(int a, int b): _a(a), _b(b) {
//    }
    A(int a): A(a, 0) {
    }
    void show() const {
        cout << _a << " " << _b << endl;
    }
    void set(int a) {
        _a = a;
    }
};

int main(int argc, char* argv[]) {
    A a;
    A b(10);
    int i = 20;
    A c(i, 20);
    c.set(i);
    a.show();
    b.show();
    c.show();
    cout << "Hello world!" << endl;

    string file = "wangbing";
    ifstream in(file);

    vector<A> v;
    v.emplace_back(10, 10);
    v[0].show();

    int x = 10;
    cout << to_string(x) << endl;
    string y = "-123.45";
    size_t pos;
    cout << stod(y, &pos) << " " << pos << endl;
    return 0;
}
