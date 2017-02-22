/*
 *  * Author: Gatevin
 *   * Created Time:  2015/7/14 14:15:27
 *    * File Name: IterativeFFT.cpp
 *     */
#include<iostream>
#include<sstream>
#include<fstream>
#include<vector>
#include<list>
#include<deque>
#include<queue>
#include<stack>
#include<map>
#include<set>
#include<bitset>
#include<algorithm>
#include<cstdio>
#include<cstdlib>
#include<cstring>
#include<cctype>
#include<cmath>
#include<ctime>
#include<iomanip>
using namespace std;
const double eps(1e-8);
typedef long long lint;

const double PI = acos(-1.0);

struct Complex
{
    double real, image;
    Complex(double _real, double _image)
    {
        real = _real;
        image = _image;
    }
    Complex(){}
};

Complex operator + (const Complex &c1, const Complex &c2)
{
    return Complex(c1.real + c2.real, c1.image + c2.image);
}

Complex operator - (const Complex &c1, const Complex &c2)
{
    return Complex(c1.real - c2.real, c1.image - c2.image);
}

Complex operator * (const Complex &c1, const Complex &c2)
{
    return Complex(c1.real*c2.real - c1.image*c2.image, c1.real*c2.image + c1.image*c2.real);
}

int rev(int id, int len)
{
    int ret = 0;
    for(int i = 0; (1 << i) < len; i++)
    {
        ret <<= 1;
        if(id & (1 << i)) ret |= 1;
    }
    return ret;
}

//当DFT= 1时是DFT, DFT = -1则是逆DFT
Complex* IterativeFFT(Complex* a, int len, int DFT)//对长度为len(2的幂)的数组进行DFT变换
{
    Complex* A = new Complex[len];//用A数组存储数组a分组之后新的顺序
    for(int i = 0; i < len; i++)
        A[rev(i, len)] = a[i];
    for(int s = 1; (1 << s) <= len; s++)
    {
        int m = (1 << s);
        Complex wm = Complex(cos(DFT*2*PI/m), sin(DFT*2*PI/m));
        for(int k = 0; k < len; k += m)//这一层结点的包含数组元素个数都是(1 << s)
        {
            Complex w = Complex(1, 0);
            for(int j = 0; j < (m >> 1); j++)//折半引理, 根据两个子节点计算父亲节点
            {
                Complex t = w*A[k + j + (m >> 1)];
                Complex u = A[k + j];
                A[k + j] = u + t;
                A[k + j + (m >> 1)] = u - t;
                w = w*wm;
            }
        }
    }
    if(DFT == -1) for(int i = 0; i < len; i++) A[i].real /= len, A[i].image /= len;
    return A;
}

int main() {
    Complex* a = new Complex[8];
    a[0] = Complex(1, 0);
    a[1] = Complex(2, 0);
    a[2] = Complex(3, 0);
    a[3] = Complex(4, 0);
    a[4] = Complex(0, 0);
    a[5] = Complex(0, 0);
    a[6] = Complex(0, 0);
    a[7] = Complex(0, 0);
    Complex* b = new Complex[8];
    b[0] = Complex(1, 0);
    b[1] = Complex(2, 0);
    b[2] = Complex(3, 0);
    b[3] = Complex(4, 0);
    b[4] = Complex(0, 0);
    b[5] = Complex(0, 0);
    b[6] = Complex(0, 0);
    b[7] = Complex(0, 0);
    a = IterativeFFT(a, 8, 1);
    b = IterativeFFT(b, 8, 1);
    cout<<"----------After DFT----------"<<endl;
    for(int i = 0; i < 8; i++)
        printf("a %.9f + %.9fi\n", a[i].real, a[i].image);
    for(int i = 0; i < 8; i++)
        printf("b %.9f + %.9fi\n", b[i].real, b[i].image);
    for(int i = 0; i < 8; ++i) {
        a[i] = a[i] * b[i];
    }
    cout<<"----------After DFT-1----------"<<endl;
    a = IterativeFFT(a, 8, -1);
    // 把a，b当作两个高次多项式的系数，FFT得到结果就是两个多项式相乘后对于多项式的系数。
    // 所以其可以用来计算高精度乘法。。卷积也类似 只是b数组需要翻转
    for(int i = 0; i < 8; i++)
        printf("%.9f + %.9fi\n",a[i].real, a[i].image);
    delete a;
    delete b;
    return 0;
}
