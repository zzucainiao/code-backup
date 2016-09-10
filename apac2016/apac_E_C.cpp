#include <iostream>
#include <algorithm>
#include <cstdio>
#define DBU

using namespace std;

double a, b, c;
int n, x, k;
struct mtx{
    double p[2][2];
    mtx(double a=0.0, double b=0.0, double c=0.0, double d=0.0) {
        p[0][0] = a;
        p[0][1] = b;
        p[1][0] = c;
        p[1][1] = d;
    }
    mtx operator*(const mtx& x) const{
        mtx re;
        for(int i = 0; i < 2; ++i)
        for(int j = 0; j < 2; ++j)
        for(int k = 0; k < 2; ++k)
            re.p[i][j] += p[i][k] * x.p[k][j];
        return re;
    }
};
mtx pow(mtx x, int n) {
    mtx re(1, 0, 0, 1);
    while(n) {
        if(n & 1) re = re * x;
        x = x*x;
        n >>= 1;
    }
    return re;
}
int main(int argc, char* argv[]) {
#ifdef DBU
    freopen("in.txt", "r", stdin);
#endif
    int t, ca = 1;
    scanf("%d", &t);
    while(t--) {
        scanf("%d%d%d%lf%lf%lf", &n, &x, &k, &a, &b, &c);
        double re = 0;
        mtx m0((a+b+c)/100, 0.0/100, a/100, (b+c)/100);
        mtx m1(a/100, (b+c)/100, c/100, (a+b)/100);
        for(int i = 0; i < 31; ++i) {
            if((k >> i) & 1) {
                mtx t = pow(m1, n);
                re += (1<<i) * ((x>>i & 1) ? t.p[1][1] : t.p[0][1]);
            } else {
                mtx t = pow(m0, n);
                re += (1<<i) * ((x>>i & 1) ? t.p[1][1] : t.p[0][1]);
            }
        }
        printf("Case #%d: %.10lf\n", ca++, re);
    }
    return 0;
}
