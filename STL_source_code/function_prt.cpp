
#include <cstdio>
#include <iostream>

using namespace std;

int Add(int a, int b) {
    return a + b;
}
int Minus(int a, int b) {
    return a - b;
}

int ( *fun(char c) )(int ,int) {
    if(c == '+') {
        return Add;
    } else {
        return Minus;
    }
}

typedef int (*OP)(int, int);

OP op(char c) {
    if(c == '+') {
        return Add;
    } else {
        return Minus;
    }
}

int main () {
    cout << fun('+')(10, 20) << endl;
    cout << fun('-')(10, 20) << endl;
    cout << op('+')(10, 20) << endl;
    cout << op('-')(10, 20) << endl;
}
