#include <stdio.h>

int f1() {
    printf("f1\n");
    return 1;
}

int f2() {
    printf("f2\n");
    return 2;
}

int main () {
    int a, b;
    while(scanf("%d%d", &a, &b) != EOF) {
        printf("%d\n", a>b?f1():f2());
    }
}
