#include <iostream>
#include <vector>
#include <cstring>
#define N 1010

using namespace std;

vector<int> mp[N];
vector<int> deep[N];
int cov[N], fa[N];
int n, s, k;

int dfs(int s, int f, int d) {
    fa[s] = f;
    int maxD = d;
    if(mp[s].size() == 1 && d > k) deep[d].push_back(s);
    for(int i = 0; i < mp[s].size(); ++i) {
        int adj = mp[s][i];
        if(adj == f) continue;
        maxD = max(maxD, dfs(adj, s, d+1));
    }
    return maxD;
}

void dfs2(int s, int f, int d) {
    cov[s] = 1;
    for(int i = 0; i < mp[s].size(); ++i) {
        int adj = mp[s][i];
        if(adj == f) continue;
        if(d < k) dfs2(adj, s, d+1);
    }
}
int solve(int maxD) {
    int ans = 0;
    for(int i = maxD; i > k; --i) {
        for(int j = 0; j < deep[i].size(); ++j) {
            int v = deep[i][j];
            if(cov[v]) continue;
            for(int l = 0; l < k; ++l) v = fa[v];
            dfs2(v, -1, 0);
            ++ans;
        }
    }
    return ans;
}
int main () {
    int t;
    cin >> t;
    while(t--) {
        cin >> n >> s >> k;
        --s;
        memset(cov, 0, sizeof(cov));
        for(int i = 0; i < n; ++i) {
            mp[i].clear();
            deep[i].clear();
        }
        for(int i = 0; i < n-1; ++i) {
            int a, b;
            cin >> a >> b;
            --a, --b;
            mp[a].push_back(b);
            mp[b].push_back(a);
        }
        cout << solve( dfs(s, -1, 0) ) << endl;
    }
    return 0;
}
