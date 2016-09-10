#include <iostream>
#include <cstdio>
#include <cstring>
#include <queue>
#include <cmath>
#include <map>
#define DB

using namespace std;
double a[1010];

double get(double x, int n) {
    double re = 1;
    while(n) {
        if(n & 1) re *= x;
        x *= x;
        n >>= 1;
    }
    return re;
}

int main(int argc, char* argv[]) {
#ifdef DB
    freopen("in.txt", "r", stdin);
#endif
    int t, ca = 1;
    scanf("%d", &t);
    while(t--) {
        int n, m;
        scanf("%d%d", &n, &m);
        for(int i =0; i < n; ++i) {
            scanf("%lf", &a[i]);
        }
        printf("Case #%d:\n", ca++);
        while(m--) {
            int li, ri;
            scanf("%d%d", &li, &ri);
            double re = 1;
            for(int i = li; i<=ri; ++i) {
                double l = 0, r = a[i];
                while( r - l > 1e-9) {
                    double mid = (l + r) / 2;
                    if( get(mid, ri-li+1) - a[i] < 1e-9) {
                        l = mid;
                    } else {
                        r = mid;
                    }
                }
                re *= l;
            }
            printf("%.9lf\n", re);
        }
    }
    return 0;
}
