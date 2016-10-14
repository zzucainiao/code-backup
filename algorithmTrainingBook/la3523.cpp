#include <iostream>
#include <algorithm>
#include <vector>
#include <stack>
#include <cstring>
#define N 1010
using namespace std;

int p[N][N];
int n, m;
struct Edge{
    int u, v;
    Edge(int u, int v): u(u), v(v){}
};

int pre[N], bccno[N], dfs_clock, bcc_cnt;
bool iscut[N]; 
vector<int> G[N], bcc[N];
stack<Edge> S;

int dfs(int u, int fa) {
    int lowu = pre[u] = ++dfs_clock;
    int child = 0;
    for(int i = 0; i < G[u].size(); ++i) {
        int v = G[u][i];
        Edge e = Edge(u, v);
        if(!pre[v]) {
            S.push(e);
            ++child;
            int lowv = dfs(v, u);
            lowu = min(lowu, lowv);
            if(lowv >= pre[u]) {
                iscut[u] = true;
                bcc_cnt++, bcc[bcc_cnt].clear();
                for(;;) {
                    Edge x = S.top(); S.pop();
                    if(bccno[x.u] != bcc_cnt) {bcc[bcc_cnt].push_back(x.u); bccno[x.u] = bcc_cnt;}
                    if(bccno[x.v] != bcc_cnt) {bcc[bcc_cnt].push_back(x.v); bccno[x.v] = bcc_cnt;}
                    if(x.u == u && x.v == v) break;
                }
            }
        } else if(pre[v] < pre[u] && v != fa) {
            S.push(e);
            lowu = min(lowu, pre[v]);
        }
    }
    if(fa < 0 && child == 1) iscut[u] = 0;
    return lowu;
}
void find_bcc(int n) {
    memset(pre, 0, sizeof(pre));
    memset(iscut, 0, sizeof(iscut));
    memset(bccno, 0, sizeof(bccno));
    dfs_clock = bcc_cnt = 0;
    for(int i = 0; i < n; ++i) {
        if(!pre[i]) dfs(i, -1);
    }
}
int odd[N], color[N];
bool bipartite(int u, int b) {
    for(int i = 0; i < G[u].size(); ++i) {
        int v = G[u][i];
        if(bccno[v] != b) continue;
        if(color[u] == color[v]) return false;
        if(!color[v]) {
            color[v] = 3 - color[u];
            if(!bipartite(v, b)) return false;
        }
    }
    return true;
}
int main () {
    while(cin >> n >> m) {
        if(n == 0 && m == 0) break;
        memset(p, 0, sizeof(p));
        for(int i = 0; i < m; ++i) {
            int x, y;
            cin >> x >> y;
            --x, --y;
            p[x][y] = p[y][x] = 1;
        }
        for(int i = 0; i < n; ++i) {
            G[i].clear();
            for(int j = 0; j < n; ++j) {
                if(i == j || p[i][j]) continue;
                G[i].push_back(j);
            }
        }
        find_bcc(n);
        memset(odd, 0, sizeof(odd));
        for(int i = 1; i <= bcc_cnt; ++i) {
            memset(color, 0, sizeof(color));
            for(int j = 0; j < bcc[i].size(); ++j) {
                bccno[ bcc[i][j] ] = i;
            }
            int u = bcc[i][0];
            color[u] = 1;
            if(bipartite(u, i) == false) {
                for(int j = 0; j < bcc[i].size(); ++j) {
                    odd[ bcc[i][j] ] = 1;
                }
            }
        }
        int ans = 0;
        for(int i = 0; i < n; ++i) {
            if(!odd[i]) {
                ++ans;
            }
        }
        cout << ans << endl;
    }
    return 0;
}
