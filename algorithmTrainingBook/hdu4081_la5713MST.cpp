#include <iostream>
#include <algorithm>
#include <vector>
#include <cstring>
#include <cstdio>
#include <cmath>
#define N 1010
using namespace std;

int n;
double p[N][3];
double dis(int i, int j) {
    return sqrt((p[i][0]-p[j][0]) * (p[i][0]-p[j][0]) + (p[i][1]-p[j][1]) * (p[i][1]-p[j][1]) );
}
struct edge {
    int f, t;
    double d;
    edge(int f, int t, double d):f(f), t(t), d(d) {}
    bool operator<(const edge &x) const {
        return d < x.d;
    }
} ;
vector< edge > e;
int f[N];
int ff(int x) {
    return x == f[x] ? x : (f[x] = ff(f[x]));
}
vector<int> G[N];
double mx[N][N];
int vi[N];
void dfs(int x, int f) {
    vi[x] = 1;
    for(int i = 0; i < G[x].size(); ++i) {
        if(G[x][i] == f) continue;
        for(int j = 0; j < n; ++j) {
            if(vi[j]) {
                mx[ G[x][i] ][j] = max(dis(x, G[x][i]), max(mx[j][x], mx[x][j]));
            }
        }
        dfs(G[x][i], x);
    }
}
int main () {
    int t;
    cin >> t;
    while(cin >> n) {
        for(int i = 0; i < n; ++i) {
            cin >> p[i][0] >> p[i][1] >> p[i][2];
            f[i] = i;
            G[i].clear();
        }
        e.clear();
        for(int i = 0; i < n; ++i) {
            for(int j = i+1; j < n; ++j) {
                e.push_back( edge(i, j, dis(i, j)) );        
            }
        } 
        sort(e.begin(), e.end());
        double sum = 0;
        for(int i = 0; i < e.size(); ++i) {
            int a = ff(e[i].f);
            int b = ff(e[i].t);
            if(a != b) {
                f[a] = b;
                G[ e[i].f ].push_back( e[i].t );
                G[ e[i].t ].push_back( e[i].f );
                sum += e[i].d;
            }
        }
        memset(mx, 0, sizeof(mx));
        memset(vi, 0, sizeof(vi));
        dfs(0, -1);
        double re = 0;
        for(int i = 0; i < n; ++i) {
            for(int j = i+1; j < n; ++j) {
                re = max(re, (p[i][2]+p[j][2]) / (sum-max(mx[i][j], mx[j][i]))); 
            }
        }
        printf("%.2lf\n", re);
    }
    return 0;
}

