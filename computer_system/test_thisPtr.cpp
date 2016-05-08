#include <cstdio>

using namespace std;

class tt{
    public:
    /*    void foo(int x) {
            printf("arg: x=%d\n", x);
        }*/
        
        void foo() {
            printf("_m_s=%d %d\n", _m_s);
        }
        int _m_s;
};

typedef void (tt::* FUNPTR)();
typedef void (*GLOBALPTR)();

template< class ToType, class FromType>
void GetMemberFuncAddr(ToType& addr, FromType from) {
    union{
        FromType _f;
        ToType _t;
    } ut;
    ut._f = from;
    addr = ut._t;
}

/*unsigned */long long This;
int main () {
    tt t;
    t._m_s =123; 
    char *ptrc = "hello";
    FUNPTR ptr = &tt::foo;
    (t.*ptr)();
    printf("%x\n", ptr);
    long long p;
    //p = (int)(&tt::foo); 类型不匹配不能强制类型转换
    GetMemberFuncAddr(p, &tt::foo);
    printf("%x\n", p);

    GLOBALPTR p1 = (GLOBALPTR)p;
//    p1(10000, 'c', ptrc);
    This = (long long)&t;
    __asm__
    (
        "movq This, %rdi \n"
    );
    p1();

    return 0;
}
