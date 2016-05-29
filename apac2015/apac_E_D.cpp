#include <iostream>
#include <cstdio>
#include <cstring>
#define DBU
#define N 200000
using namespace std;

int n, q;
long long p[N * 100 + 10];
long long sum[N * 100 + 10];
int a[N+10];
int main(int argc, char* argv[]) {
#ifdef DBU
    freopen("in.txt", "r", stdin);
#endif
    int t, ca = 1;
    scanf("%d", &t);
    while(t--) {
        scanf("%d%d", &n, &q);
        for(int i = 0 ; i < n; ++i) {
            scanf("%d", &a[i]);
        }
        for(int i = 1; i < n; ++i) {
            a[i] += a[i-1];
        }
        long long mx = a[n-1] + 1;
        memset(p, 0, sizeof(p));
        for(int i = 0; i < n; ++i) {
            for(int j = i; j < n; ++j) {
                ++p[ a[j]-(i==0? 0 : a[i-1]) ];
            }
        }
        memset(sum, 0, sizeof(sum));
        for(int i = 1; i < mx; ++i) {
            sum[i] = i*p[i] + sum[i-1];
        }
        for(int i = 1; i < mx; ++i) {
            p[i] += p[i-1];
        }

        printf("Case #%d:\n", ca++);
        while(q--) {
            long long re = 0;
            long long l ,r;
            scanf("%lld%lld", &l, &r);
            //--l, --r;
            int posl = lower_bound(p, p+mx, l) - p;
            int posr = upper_bound(p, p+mx, r) - p;
            //printf("(%lld %d) (%lld %d)\n", l, posl, r, posr);
            if(posl == posr) {
                re += posl * (r - l);
            }
            if(posr > posl) { 
                re += posl * (p[posl] - l + 1);
                re += (r - p[posr-1]) * posr;
            }
            if(posr > posl + 1) {
                re += sum[posr - 1] - sum[posl]; 
            }
            printf("%lld\n", re);
        }
    }
    return 0;
}

