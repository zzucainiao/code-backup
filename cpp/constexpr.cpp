#include <iostream>
#include <vector>
using namespace std;

constexpr int new_size(int x) {return 42*x;}

template< class T > 
class A {
    T _a;
public:
    A(T a): _a(a) {
    }
    void show() const {
        cout << _a << endl;
    }
};

template< typename T >
using Table = vector< A<T> >; //有模版的别名不能声明在函数内
int main(int argc, char* argv[]) {
    constexpr int foo = new_size(10); 
    cout << foo << endl;
    //int i = 10;
    const int i = 10;
    constexpr int a = new_size(i);

    typedef int INT;
    INT b = 10;
    using inte = int;
    inte c = 10;
    cout << b << " " << c << endl;

    A<int> d(10);
    d.show();
    //typedef vector< A<T> > Table; // error
    /*template< typename T >
    using Table = vector< A<T> >; //有模版的别名不能声明在函数内
    */
    Table<int> t;
    t.push_back(d);
    t[0].show();
    cout << "Hello world!" << endl;
    return 0;
}
