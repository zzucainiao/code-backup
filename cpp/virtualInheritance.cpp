#include <iostream>
using namespace std;

class A {
public:
    A(int a): _a(a) {
        cout << "A" << endl;
    }
    virtual void a() {
        cout << "A::a()" << endl;
    }
private:
    long long _a;
};

class B: virtual public A{
public:
    B(int a): A(a) {
        cout << "B" << endl;
    }
};
class C: virtual public A{
public:
    C(int a): A(a) {
        cout << "C" << endl;
    }
    virtual void c() {
        cout << "C::c()" << endl;
    }
};
class D: public B, public C {
public:
    D(int a): B(a), C(a), A(a) {
        cout << "D" << endl;
    }
};

//引用导致地址偏移，而且可以看到B，D的地址是一样的
void fa(A& a) {
    cout << "A& " << (size_t)&a << endl;
    a.a();
}
void fb(B& a) {
    cout << "B& " << (size_t)&a << endl;
    a.a();
}
void fc(C& a) {
    cout << "C& " << (size_t)&a << endl;
    a.a();
}
void fd(D& a) {
    cout << "D& " << (size_t)&a << endl;
    a.a();
}
void test() {
    D d(10);
    fa(d);
    fb(d);
    fc(d);
    fd(d);
}
int main(int argc, char* argv[]) {
    D d(10);
    cout << sizeof(A) << " " << sizeof(B) << " " << sizeof(C) << " " << sizeof(D) << endl; 
    //16 24 24 32 （64位机器）
    //A(虚函数表指针+ longlong)
    //B(自身虚函数表指针 ＋A)
    //C(自身虚函数表指针 ＋A)
    //D(自身虚函数表指针(整合B虚函数表指针) ＋C虚函数表指针＋A )
    D* x = new D(10);
    x->a();
    x->c();

    cout << (size_t)(x) << endl; //打印地址
    void *t = (void*) x; //强转为void* 保证地址不变
    C* tt = (C*)t;
    cout << (size_t)(tt) << endl;
    //tt->c(); 报错，因为第一个虚函数表为B的虚函数表，内部没有c()函数指针

    C* c = x; //地址偏移，c指向类D中C的虚函数表
    cout << (size_t)(c) << endl;
    c->c(); //调用成功

    c = static_cast<C*>(x); //地址偏移同上
    cout << (size_t)(c) << endl;
    c->c();

    C* p;
    p = x;
    cout << (size_t)(p) << endl;
    p->c();

    D* pp;
    pp = dynamic_cast<D*>(p);
    //下面两种写法效果相同，地址都会再回到D的虚函数表位置
//    pp = (D*)p;
    cout << (size_t)pp << endl;
    p->c();

    cout << "---------------" << endl;
    test();
    return 0;
}

