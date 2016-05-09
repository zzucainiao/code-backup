#include <iostream>
#include <vector>
#include <iterator>
using namespace std;

class A {
    public:
    int a, b;
    virtual ~A(){
    }
};

int main(int argc, char* argv[]) {
    vector<int> v;
    v.push_back(1);
    v.push_back(2);
    v.push_back(3);
    v = {1, 2, 3/*, 4.0*/}; //double占8字节 int 4字节，大空间到小空间不允许
    for(auto& x : v) {
        x += 10;
    }
    for(auto& x : v) {
        cout << x << endl;
    }
    
    int p[] = {1, 2, 3, -4};
    int* s = begin(p);
    int* e = end(p);
    while(s != e && *s > 0) 
        ++s;
    if(s == e) {
        cout << "no" << endl;
    } else {
        cout << *s << endl;
    }

    int a = 10;
    int b = -3;
    int c = 3;
    cout << a / b << " " << a / c << endl; //向0取整
    //-3 3
    cout << sizeof(A) << " " << sizeof A::a << endl;
    cout << "Hello world!" << endl;

    return 0;
}
