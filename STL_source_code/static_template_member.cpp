#include <cstdio>
#include <iostream>

using namespace std;

template<class T>
class A {
    public:
        static int num;
};

template<class T> int A<T>::num = 0;
//template<class int> int A<int>::num = 10;
//int A<char>::num = 10;

int main () {
    A<int> a;
    A<char> b;
    cout << A<int>::num << " " << a.num << endl;
    cout << A<char>::num << " " << b.num << endl;
    A<int>::num ++;
    cout << A<int>::num << " " << a.num << endl;
    cout << A<char>::num << " " << b.num << endl;

    return 0;
}
/*
0 0
0 0
1 1
0 0
every template argument has is own staitc
*/
