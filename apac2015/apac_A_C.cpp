#include <iostream>
#include <algorithm>
#include <cstdio>
#include <cstring>
#include <queue>
#include <cmath>
#include <map>
#define DB

using namespace std;

int sh[101][101];
long long th[1001][1001];
int n, m;
int fat[10010];
int fa(int x) {
    return x == fat[x] ? x : fa(fat[x]);
}

void show() {
    cout << "show" << endl;
        for(int i=0; i<n; ++i) {
            for(int j=0; j<n; ++j) {
                printf("%d ", th[i][j]);
            }
            printf("\n");
        }
}
void f() {
    for(int k = 0; k < n; ++k)
    for(int i = 0; i < n; ++i)
    for(int j = 0; j < n; ++j) {
        if(th[i][j] > th[i][k] + th[k][j]) {
            th[i][j] = th[i][k] + th[k][j];
        }
    }
}
long long g[10010][3];
int main(int argc, char* argv[]) {
#ifdef DB
    freopen("in.txt", "r", stdin);
#endif
    int t, ca = 1;
    scanf("%d", &t);
    while(t--) {
        scanf("%d%d", &n, &m);
        for(int i =0 ;i < n; ++i) {
            for(int j =0; j < n; ++j) {
                if(i == j) th[i][j] = 0;
                else th[i][j] = (1LL << 60);
            }
        }
        for(int i = 0; i < m; ++i) {
            scanf("%lld%lld%lld", &g[i][0], &g[i][1], &g[i][2]);
            th[ g[i][0] ][ g[i][1] ] = min(th[ g[i][0] ][ g[i][1] ], (g[i][2]));
            th[ g[i][1] ][ g[i][0] ] = min(th[ g[i][1] ][ g[i][0] ], (g[i][2]));
        }
        f();
        bool ff = true;
        printf("Case #%d:\n", ca++);
        for(int i=0; i < m; ++i) {
            if(g[i][2] != 0 && g[i][2] != th[ g[i][0] ][ g[i][1] ] ) {
                printf("%d\n", i);
            }
        }
        continue;
        for(int i=0; i < m; ++i) {
            fat[i] = i;
        }
        for(int i = 0; i < m; ++i) {
            for(int j = i+1; j < m; ++j) {
                if(((g[i][0] == g[j][0] && g[i][1] == g[j][1]) || 
                       (g[i][0] == g[j][1] && g[i][1] == g[j][0])) && g[i][2] == g[j][2]) {
                    if( fa(i) != fa(j) ) {
                        fat[ fa(i) ] = fa(j);
                    }
                }
            }
        }
        for(int i = 0; i < n; ++i)
        for(int j = 0; j < n; ++j)
            sh[i][j] = th[i][j];
        bool first = true;
        printf("Case #%d:\n", ca++);
        for(int i=0; i < m; ++i) {
            for(int ii =0 ;ii < n; ++ii) {
                for(int j =0; j < n; ++j) {
                    if(ii == j) th[ii][j] = 0;
                    else th[ii][j] = INT_MAX / 2;
                }
            }
            for(int j = 0; j < m; ++j) {
                if(fa(j) == fa(i)) continue;
                th[ g[j][0] ][ g[j][1] ] = min(th[ g[j][0] ][ g[j][1] ], g[j][2]);
                th[ g[j][1] ][ g[j][0] ] = min(th[ g[j][1] ][ g[j][0] ], g[j][2]);
            }
            f();
            bool flag = false;
            for(int ii =0 ;ii < n; ++ii) {
                for(int j =0; j < n; ++j) {
                    if(sh[ii][j] != th[ii][j]) {
                        flag = true;
                        goto out;
                    }
                }
            }
out:;
            if(!flag) {
                if(first) {
                    first = false;
                } else {
                    printf(" ");
                }
                printf("%d", i);
            }
        }
        printf("\n");
    }
    return 0;
}
