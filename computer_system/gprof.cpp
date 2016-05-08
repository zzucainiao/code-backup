#include <cstdio>

int f1(int i) {
    int a = 0;
    for(; i < 1000000; ++i)
        a += i;
    return a;
}

int f2(int i) {
    int a = 0;
    for(; i < 100000; ++i)
        a += i;
    return a;
}
int main () {
    int a = 0, b = 0;
    for(int i = 0; i < 10000; ++i) {
        a += f1(i);
    }
    for(int i = 0; i < 100000; ++i) {
        b += f2(i);
    }
    printf("%d %d\n", a, b);
    return 0;
}
