#include <iostream>
#include <algorithm>
#include <vector>
#include <cstring>
#define MP(a, b) make_pair((a), (b))
#define N 500010

using namespace std;

int n, m;
struct edge {
    int x, y, d;
    edge(int x, int y, int d): x(x), y(y), d(d){}
    bool operator<(const edge &e) const {
        return d < e.d;
    }
};
vector<edge> e;
int fa[N], cost[N], f[N], deep[N];
int mx[N][20], anc[N][20];

vector< pair<int, int> > G[N];

int ff(int x) {
    return x == f[x] ? x : (f[x] = ff(f[x]));
}
bool mst() {
    sort(e.begin(), e.end());
    for(int i = 0; i < n; ++i) {
        f[i] = i;
        G[i].clear();
    }
    int num = 0;
    for(int i = 0; i < m; ++i) {
        int a = ff( e[i].x );
        int b = ff( e[i].y );
        if(a != b) {
            f[a] = b;
            G[ e[i].x ].push_back( MP(e[i].y, e[i].d) );
            G[ e[i].y ].push_back( MP(e[i].x, e[i].d) );
            ++num;
            if(num == n-1) return true;
        }
    }
    return false;
}
void dfs(int s, int f, int _deep) {
    deep[s] = _deep;
    for(int i = 0; i < G[s].size(); ++i) {
        int adj = G[s][i].first;
        int d = G[s][i].second;
        if(adj == f) continue;
        fa[adj] = s;
        cost[adj] = d;
        dfs(adj, s, _deep+1);
    }
}
void prepro() {
    for(int i = 0; i < n; ++i) {
       anc[i][0] = fa[i];
       mx[i][0] = cost[i]; 
    }
    for(int j = 1; (1<<j) < n; ++j) {
        for(int i = 0; i < n; ++i) {
            if(anc[i][j-1] != -1) {
                int a = anc[i][j-1];
                anc[i][j] = anc[a][j-1];
                mx[i][j] = max(mx[i][j-1], mx[a][j-1]);
            }
        }
    }
}
int quary(int p, int q) {
    if(deep[p] < deep[q]) {
        swap(p, q);
    }
    int log = 0;
    while((1<<log) <= deep[p]) ++log;
    --log;
    int re = 0;
    for(int i = log; i>=0; --i) {
        if(deep[p] - (1<<i) >= deep[q]) {
            re = max(re, mx[p][i]);
            p = anc[p][i];
        }
    }
    if(p == q) return re; //lca = p
    for(int i = log; i>=0; --i) {
        if(anc[p][i] != -1 && anc[p][i] != anc[q][i]) {
            re = max(re, mx[p][i]);
            re = max(re, mx[q][i]);
            p = anc[p][i];
            q = anc[q][i];
        }
    }
    re = max(re, cost[p]);
    re = max(re, cost[q]);
    return re; // lca = fa[p]
}
int main () {
    bool first = true;
    while(cin >> n >> m) {
        if(first) {
            first = false;
        } else {
            cout << endl;
        }
        e.clear();
        for(int i = 0; i < m; ++i) {
            int x, y, d;
            cin >> x >> y >> d;
            --x, --y;
            e.push_back(edge(x, y, d));
        }
        mst();
        memset(fa, -1, sizeof(fa));
        memset(cost, -1, sizeof(fa));
        memset(deep, -1, sizeof(deep));
        for(int i = 0; i < n; ++i) {
            if(deep[i] == -1) dfs(i, -1, 0);
        }
        memset(anc, -1, sizeof(anc));
        memset(mx, -1, sizeof(mx));
        prepro();
        int q;
        cin >> q;
        while(q--) {
            int s, t;
            cin >> s >> t;
            --s, --t;
            cout << quary(s, t) << endl;
        }
    }
    return 0;
}
