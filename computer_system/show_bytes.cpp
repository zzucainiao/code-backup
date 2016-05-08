#include <cstdio>

typedef unsigned char *byte_pointer;

void show_bytes(byte_pointer start, int len) {
    for(int i = 0; i < len; ++i) {
        printf("%.2x", start[i]);
    }
    printf("\n");
}

template< class T>
void show_type(T x) {
    show_bytes((byte_pointer)&x, sizeof(x));
}

int main() {
    int a = 0x12345678;
    double b = a;
    int *p = &a;
    show_type(a);
    show_type(b);
    show_type(p);
}
