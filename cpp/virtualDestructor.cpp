#include <iostream>
using namespace std;

class Base {
public:
    int a;
    Base(): a(10) {
    }
    virtual ~Base(){
        cout << "in base" << endl;
    }
};
class Derive: public Base {
public:
    Derive() {
    }
    ~Derive() {
        cout << "in derive" << endl;
    }
};

int main(int argc, char* argv[])
{
    Base a;
    Derive b;
    cout << sizeof(a) << " " << sizeof(b) << endl;
    cout << "Hello world!" << endl;

    return 0;
}
