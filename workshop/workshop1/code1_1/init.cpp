
class A{
    int _a;
    A(){
    }
    //++i
    const A& operator++() {
        _a += 1;
        return *this;
    }
  
    //i++ 
    const A operator++(int) {
        A re(*this);
        ++(*this);
        return re;
    }
};


A a;
for(int i = 0; i < 10000; ++i) {
    a.f();
}

while(t--) {
}

