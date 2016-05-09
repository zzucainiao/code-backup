#include <iostream>
#include <vector>
using namespace std;

auto f(int n) -> vector<int> { //返回值后置
    if(n < 1) {
        return {1};
    }
    return {1, 2};
}


int main(int argc, char* argv[]) {
    vector<int> v = f(2);
    for(const int& x : v) {
        cout << x << endl;
    }

    int p[2] = {0, 1};
    int (*a)[2] = &p; //指向数组的指针
    cout << sizeof(p) << " " << sizeof(a) << " " << p[0] << " " << (*a)[0] << endl;
    cout << "Hello world!" << endl;

    return 0;
}
