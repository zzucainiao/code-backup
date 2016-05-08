#include <cstdio>

int main () {
    int a = (int)+1e10;
    int b = (int)-1e10;
    printf("%d %lf %d %lf\n", a, +1e10, b, -1e10);
    int c = -2147483648;
    printf("%d %d\n", c-2, c);
}
/*
2147483647 10000000000.000000 -2147483648 -10000000000.000000
2147483646 -2147483648
*/
