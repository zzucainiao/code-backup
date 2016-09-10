#include <iostream>
#include <stdio.h>
#include <cmath>
#include <algorithm>
#include <vector>
#include <map>
#include <set>
#include <string>
#define MAX (1LL << 62)
#define DB
using namespace std;

long long p[3010][3010];
long long n, k, c, x;
long long a[3010], b[3010];

bool ok(int x, int y) {
    if(!(x >= 0 && x < n && y >= 0 && y < n) )
        return false;
    x += k - 1;
    y += k - 1;
    if(x >= 0 && x < n && y >= 0 && y < n)
        return true;
    return false;
}
int main(int argc, char* argv[]) {
#ifdef DB
    freopen("in.txt", "r", stdin);
#endif
    int t, ca = 1;
    scanf("%d", &t);
    while(t--) {
        scanf("%lld%lld%lld%lld", &n, &k, &c, &x);
        for(int i = 0; i < n; ++i)
            scanf("%lld", &a[i]);
        for(int i = 0; i < n; ++i)
            scanf("%lld", &b[i]);
        for(int i = 0; i < n; ++i)
        for(int j = 0; j < n; ++j)
            p[i][j] = (a[i]*(i+1) + b[j]*(j+1) + c) % x;
        multiset<long long> mp;
        long long re = 0;
        for(int i = 0; i < k; ++i)
        for(int j = 0; j < k; ++j) {
            mp.insert(p[i][j]);
        }
        re += *(--mp.end());
        int xx = 0, yy = 0;
        int dir[4][2] = {0, 1, 1, 0, 0, -1, 1, 0};
        int now = 0;
        while(1) {
            int tx = xx + dir[now % 4][0];
            int ty = yy + dir[now % 4][1];
            if(!ok(tx, ty)) {
                if(now % 2 == 0) {
                    ++now;
                    continue;
                } else {
                    break;
                }
            }
            if(now % 4 == 0) {
                for(int i = 0; i < k; ++i) {
                    auto it = mp.find( p[xx+i][yy] );
                    mp.erase(it);
                }
                for(int i = 0; i < k; ++i) {
                    mp.insert( p[xx+i][yy+k] );
                }
            } else if(now % 4 == 2) {
                for(int i = 0; i < k; ++i) {
                    auto it = mp.find( p[xx+i][yy+k-1] );
                    mp.erase(it);
                }
                for(int i = 0; i < k; ++i) {
                    mp.insert( p[xx+i][yy-1] );
                }
            } else {
                for(int i = 0; i < k; ++i) {
                    auto it = mp.find( p[xx][yy+i] );
                    mp.erase(it);
                }
                for(int i = 0; i < k; ++i) {
                    mp.insert( p[xx+k][yy+i] );
                }
            }
            xx = tx;
            yy = ty;
            if(now % 2 == 1) {
                ++now;
            }
            re += *(--mp.end());
        }
        printf("Case #%d: %lld\n", ca++, re);
    }
    return 0;
}


