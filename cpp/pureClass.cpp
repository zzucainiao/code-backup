
class A {
    public:
        int _a = 0;
        virtual bool f() const = 0;
};

class B :public A{
    public:
        bool f()const override {
            return _a == 0;
        }
};

int main (){
       B b;
       b.f();
       B c(b);
       c.f();
       return 0;
}
