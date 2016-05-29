#include <iostream>
#include <stdio.h>
#include <cmath>
#include <algorithm>
#include <vector>
#include <map>
#include <set>
#include <string>
#define MAX (1LL << 52)
#define DB
using namespace std;

long long p[110][2];
int n;
void cal(long long *x, long long *y) {
    x[0] = max(x[0], y[0]);
    x[1] = min(x[1], y[1]);
}
void bs(long long *x, long long pi, long long ki) {
    long long l = 0, r = MAX;
    while(l < r) {
        long long mid = (l + r) >> 1;
        if( ki * 100 >= (pi+1) * mid ) {
            l = mid+1;
        } else {
            r = mid;
        }
    }
    x[0] = l;
    l = 0, r = MAX;
    pi -= 1;
    while(l < r) {
        long long mid = (l + r) >> 1;
        if( ki * 100 >= (pi+1) * mid ) {
            l = mid+1;
        } else {
            r = mid;
        }
    }
    x[1] = l-1;
}
int main(int argc, char* argv[]) {
#ifdef DB
    freopen("in.txt", "r", stdin);
#endif
    int t, ca = 1;
    scanf("%d", &t);
    while(t--) {
        scanf("%d", &n);
        for(int i = 0; i < n; ++i) {
            long long pi;
            long long ki;
            scanf("%lld%lld", &pi, &ki);
            if(ki == 0) {
                p[i][0] = 0;
                p[i][1] = MAX;
                continue;
            }
            if(pi == 0) {
                p[i][0] = ki * 100 + 1;
                p[i][1] = MAX;
                continue;
            }
            if(pi == 100) {
                p[i][0] = ki;
                p[i][1] = ki;
                continue;
            }
            bs(p[i], pi, ki);
        }
        long long re[2];
        re[0] = p[0][0];
        re[1] = p[0][1];
        for(int i = 1; i < n; ++i) {
            cal(re, p[i]);
        }
        printf("Case #%d: ", ca++);
        if(re[0] == re[1]) {
            printf("%lld\n", re[0]);
        } else {
            printf("%lld\n", -1LL);
        }
    }
    return 0;
}
