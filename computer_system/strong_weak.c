#include <stdio.h>

void f();
/*static*/ int x = 123;
int y = 456;

int main () {
    x = 134;
    f();
    printf("x = %d y = %d\n", x, y);
    return 0;
}
/*
 static可以使变量和函数只在本文件中可见
 上程序中int x 因为初始化了是强类型，而double x没有初始化 是弱类型，编译器会选择强类型
 所以如果没有static，int x覆盖double int
 又因为double 8字节，所以x = 0.0覆盖了x y的值
 x = 0 y = 0 // 无static
 x = 134 y = 456 // 有static

 上面代码用gcc编译报warning
 g++报error因为g++有类型信息和重名检测
 */
/* strong_weak.c
double x;
void f() {
    x = 0.0;
}
*/
