#include <iostream>
#include <vector>
#include <algorithm>
#include <numeric>
using namespace std;

class A {
    int _a = 10, _b = 10;
public:
    A() = default;
    void show() const {
        cout << _a << " " << _b << endl;
    }
    void add(int a) {
        _a += a;
    }
    int geta() const {
        return _a;
    }
};

int main(int argc, char* argv[]) {
    vector<A> v = {A(), A(), A()};
    for_each(v.begin(), v.end(), [](const A& a){ a.show(); });

    vector<A> v2;
    for_each(v.begin(), v.end(), [&v2](const A& a){ v2.push_back(a); });
    for_each(v2.begin(), v2.end(), [](const A& a){ a.show(); });

    int x = 10;
    for_each(v.begin(), v.end(), [x](A& a)mutable { a.add(++x); }); //值传递默认const

    for_each(v.begin(), v.end(), [](const A& a){ a.show(); });
    int first = accumulate(v.begin(), v.end(), 0, [](int x, const A& y) -> int
            { if(y.geta() > 22) return x + y.geta(); else return x;});
    cout << first << endl;
    return 0;
}
