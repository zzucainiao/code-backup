#include <iostream>
#include <string>
#include <memory>

using namespace std;

class Base {
public:
    Base(const string& x) {
        cout << "construct " << x << endl;
    }
    virtual void out(string s="wangbing") const {
        cout << s << endl;
    }
    virtual void show() const final {
        cout << "woqu" << endl;
    }
};

class Drive final: public Base {
public:
    using Base::Base; //继承Base的构造函数，编译器生成类似Drive(parm): Base(arg){}代码
    virtual void out(string s="nimei") const override {
        cout << "hehe" << endl;
        cout << s << endl;
    }
    /*
    virtual void out() const override { // 参数列表不同，编译器认为和base中函数独立，override指明函数重写 编译错误！推荐使用override，错误提前到编译期
        cout << "error" << endl;
    }
    */
    /*
    virtual void show() const override { //show被声明为final不能被重写
        cout << "haha" << endl;
    }
    */
};
/*
class Err:public Drive { //final类不能被继承
};
*/
int main(int argc, char* argv[]) {

    shared_ptr< Base > ptr = make_shared<Drive>(Drive("lala"));
    ptr->out();
    //hehe
    //wangbing
    //使用Base的默认参数，调用Drive的out函数。。。所以虚函数尽量不要写默认参数，即使写了也一定上下一致！！

    cout << "Hello world!" << endl;
    
    return 0;
}
