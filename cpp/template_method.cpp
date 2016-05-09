#include <iostream>
using namespace std;

class Base {
public:
    void show() {
        step1();
        step2();
        step3();
    }
    void step1() {
        cout << "base step1" << endl;
    }
    virtual void step2() {
        cout << "base step2" << endl;
    }
    void step3() {
        cout << "base step3" << endl;
    }
};

class Drive: public Base {
    virtual void step2() {
        cout << "Drive step2" << endl;
    }
};

int main(int argc, char* argv[]){
    Drive d;
    d.show();

    return 0;
}
