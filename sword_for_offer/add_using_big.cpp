#include <stdio.h>

int add(int a, int b) {
    int carry = 0;
    int sum = 0;
    do {
        sum = a ^ b;
        carry = (a & b) << 1;
        a = sum;
        b = carry;
    } while(b != 0);
    return a;
}
int main () {
    int a, b;
    while(scanf("%d%d", &a, &b) != EOF) {
        printf("%d %d\n", a+b, add(a ,b));
    }
}
