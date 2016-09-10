#include <iostream>
#include <stdio.h>
#include <cmath>
#include <algorithm>
#include <vector>
#include <map>
#include <set>
#include <queue>
#include <string>
#define MAX (1LL << 62)
#define DB
using namespace std;

long long p[3010][3010], f[3010][3010], d[3010][3010];
long long n, k, c, x;
long long a[3010], b[3010];

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
        /*
        printf("p:\n");
        for(int i =0; i < n; ++i) {
            for(int j = 0; j < n; ++j) {
                printf("%lld ", p[i][j]);
            }
            printf("\n");
        }
        */
        for(int i = 0; i < n; ++i) {
            deque< pair<long long, int> > Q;
            for(int l = 0; l < k; ++l) {
                while(!Q.empty() && Q.front().first <= p[i][l]) {
                    Q.pop_front();
                }
                Q.push_front(make_pair(p[i][l], l));
            }
            f[i][0] = Q.back().first;
            for(int l = 1, j = k; j < n; ++j, ++l) {
                while(!Q.empty() && Q.back().second < l) {
                    Q.pop_back();
                }
                while(!Q.empty() && Q.front().first <= p[i][j]) {
                    Q.pop_front();
                }
                Q.push_front( make_pair(p[i][j], j) );
                f[i][l] = Q.back().first;
            }
        }
        /*
        printf("f:\n");
        for(int i = 0; i < n; ++i){
            for(int j = 0; j < n-k+1; ++j) {
                printf("%lld ", f[i][j]);
            }
            printf("\n");
        }
        */
        for(int j = 0; j < n-k+1; ++j) {
            deque< pair<long long, int> > Q;
            for(int l = 0; l < k; ++l) {
                while(!Q.empty() && Q.front().first <= f[l][j]) {
                    Q.pop_front();
                }
                Q.push_front(make_pair(f[l][j], l));
            }
            d[0][j] = Q.back().first;
            for(int l = 1, i = k; i < n; ++l, ++i) {
                while(!Q.empty() && Q.back().second < l) {
                    Q.pop_back();
                }
                while(!Q.empty() && Q.front().first <= f[i][j]) {
                    Q.pop_front();
                }
                Q.push_front( make_pair(f[i][j], i) );
                d[l][j] = Q.back().first;
            }
        }
        /*
        printf("b:\n");
        for(int i = 0; i < n-k+1; ++i){
            for(int j = 0; j < n-k+1; ++j) {
                printf("%lld ", d[i][j]);
            }
            printf("\n");
        }
        */
        long long re = 0;
        for(int i = 0; i < n-k+1; ++i)
        for(int j = 0; j < n-k+1; ++j) {
            re += d[i][j];
        }
        printf("Case #%d: %lld\n", ca++, re);
    }
    return 0;
}


