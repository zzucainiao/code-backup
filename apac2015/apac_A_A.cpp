#include <iostream>
#include <cstdio>
#include <cstring>
#include <queue>
#include <map>
#define DB

using namespace std;

long long p[100];
int mx;
int dfs(long long n) {
    int a = lower_bound(p, p+mx, n) - p;
    int len = p[a];
    if(n == p[a] / 2) {
        return 0;
    }
    if(a == 1) {
        return 0;
    }
    return dfs(2 * (p[a] / 2) - n) == 0 ? 1 : 0;
}
int main(int argc, char* argv[]) {
#ifdef DB
    freopen("in.txt", "r", stdin);
#endif
    int t, ca = 1;
    scanf("%d", &t);
    p[0] = 0;
    p[1] = 1;
    int i;
    for(i = 2; p[i-1] < 1e18; ++i) {
        p[i] = 2 * p[i-1] + 1;
    }
    mx = i;
    while(t--) {
        long long n;
        scanf("%lld", &n);
        --n;
        printf("Case #%d: %d\n", ca++, dfs(n));
    }
    return 0;
}
