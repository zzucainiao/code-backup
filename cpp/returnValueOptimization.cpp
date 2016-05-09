#include <iostream>
using namespace std;

class A {
public:
    const A operator + (const A & x) { // 返回const对象
        A re(_a + x._a);
        cout << "operator + " << endl;
        return re;
    }
    A(int a = 0): _a(a){
        cout << "construct " << _a << endl;
    }
    //赋值函数四步骤
    //1，检查自赋值
    //2，delete原内存
    //3，new新内存 copy数据
    //4，返回本对象引用
    //原则：与内置类型行为一样
    A& operator=(const A & x) {
        if(this == &x)
            return *this;
        _a = x._a;
        cout << "operator = " << endl;
        return *this;
    }
private:
    int _a;
};

int main(int argc, char* argv[])
{
    cout << "Hello world!" << endl;
    A a(10);
    A b(20);
    A c = a + b; //函数内部临时对象和返回值临时对象都被 优化了，这编译器比较厉害。。(调用copy构造函数)
    c = a; //调用赋值函数
    int aa = 0, bb = 10, cc = 20;
    (aa = bb) = cc;
    cout << aa << " " << bb << " " << cc << endl;
    return 0;
}
