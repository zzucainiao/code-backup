#include <iostream>
#include <cmath>
#include <cstdio>
#include <cstring>
#include <vector>
#include <queue>
#include <map>
#include <set>
//#define DB
#define N 35000000 

using namespace std;

int p[N], dp[N];
vector<long long> pri;

int getdit(long long a) {
    int re = 0;
    while(a) {
        re += a % 10;
        a /= 10;
    }
    return re;
}
int dfs(long long n) {
    if(n < N && dp[n] != -1) return dp[n];
    int dit = getdit(n);
    if(p[dit] == 0) {
        if(n < N) dp[n] = 0;
        return 0;
    }
    if(n < N && p[n] == 0) {
        dp[n] = 1;
        return 1;
    }
    long long x = n;
    for(int i = 0; i < pri.size() && pri[i] < n; ++i) {
        if(x % pri[i] == 0) {
            while(x % pri[i] == 0) {
                x /= pri[i];
            }
            long long y = n;
            while(y % pri[i] == 0) {
                y /= pri[i];
            }
            if( !dfs(y) ) {
                if(n < N) dp[n] = 1;
                return 1;
            }
        }
    }
    long long y = n;
    if(x != 1 && x > pri[ pri.size()-1 ]) {
        while(y % x == 0) {
            y /= x;
        }
        if( !dfs(y) ) {
            if(n < N) dp[n] = 1;
            return 1;
        }
    }
    if(n < N) dp[n] = 0;
    return 0;
}
int main(int argc, char* argv[]) {
#ifdef DB
    freopen("in.txt", "r", stdin);
#endif
    memset(p, 0, sizeof(p));
    int tt = (int)(sqrt(N) + 0.5);
    for(int i = 2; i <=tt; ++i) {
        if(p[i] == 0)
            for(int j = i * i; j < N; j+=i) {
                p[j] = 1;
            }
    }
    for(int i = 2; i < N; ++i) {
        if(p[i] == 0) pri.push_back(i);
    }
    int t, ca = 1;
    scanf("%d", &t);
    memset(dp, -1, sizeof(dp));
    dp[1] = 0;
    while(t--) {
        long long n;
        scanf("%lld", &n);
        printf("Case #%d: %s\n", ca++, !dfs(n) ? "Seymour":"Laurence");
    }
    return 0;
}
