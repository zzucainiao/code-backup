#include <iostream>
using namespace std;

class A {
    int a = 10;
public:
    void show() const {
        cout << a << endl;
    }
};

int main(int argc, char* argv[]){
    A a;
    a.show();
    cout << "Hello world!" << endl;

    return 0;
}
