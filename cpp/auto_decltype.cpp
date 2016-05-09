#include <iostream>
using namespace std;

int f() {
    return 10;
}
int main(int argc, char* argv[]) {
    int i = 0;
    const int a = i, &b = a;
    auto x = a; //int 类型 去掉顶层const
    x = 10;
    auto c = b; //b是a的别名，a为int，所以c也为int
    c = x;
    cout << i << " " << a << " " << b << " " << x << " " << c << endl;
    //0 0 0 10 10
    const auto d = a; //显示const
    cout << a << endl;
    //d = 10;


    const int aa = i, &bb = aa;
    decltype(aa) xx = aa; //const int
    decltype(bb) yy = bb; // const int &, 引用只有在decltype出不是变量的别名
    //yy = 10;
    cout << aa << " " << bb << " " << xx << " " << yy << endl;

    decltype(i) nn = i;
    decltype((i)) mm = i; //双括号为引用
    mm = 100;
    cout << nn << " " << mm << endl;
    //0 100
    decltype(f()) aaa; //int
    aaa = 10;
    cout << aaa << endl;
    cout << "Hello world!" << endl;

    return 0;
}
