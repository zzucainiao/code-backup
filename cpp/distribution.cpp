#include <iostream>
#include <random>
using namespace std;

int main(int argc, char* argv[]) {
    default_random_engine e(time(0));
    for(int i =0; i < 10; ++i) {
        cout << e() << endl;
    }
    uniform_real_distribution<> u(0, 1);
    for(int i = 0; i < 10; ++i) {
        cout << u(e) << endl;
    }

    normal_distribution<> n(4, 1.5); //均值 标准差
    for(int i = 0; i < 10; ++i) {
        cout << n(e) << endl;
    }
    cout << "Hello world!" << endl;

    return 0;
}
