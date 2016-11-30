//#include <bits/stdc++.h>
#include <vector>
#include <queue>
#include <cstdio>
#include <cstring>
#define INF 0x3fffffff
#define maxn 11000
using namespace std;

struct Edge {
    int from, to, cap, flow;
    Edge(int from, int to, int cap, int flow): from(from), to(to), cap(cap), flow(flow){
    }
};
struct Dinic {
    int n, m, s, t;
    vector<Edge> edges;
    vector<int> G[maxn];
    bool vis[maxn];
    int d[maxn], cur[maxn];

    void addEdge(int from, int to, int cap) {
        edges.push_back( Edge(from, to, cap, 0) );
        edges.push_back( Edge(to, from, 0, 0) );
        m = edges.size();
        G[from].push_back(m-2);
        G[to].push_back(m-1);
    }
    bool BFS() {
        memset(vis, 0, sizeof(vis));
        queue<int> Q;
        Q.push(s);
        d[s] = 0;
        vis[s] = 1;
        while(!Q.empty()) {
            int x = Q.front(); Q.pop();
            for(int i = 0; i < G[x].size(); ++i) {
                Edge &e = edges[G[x][i]];
                if(!vis[e.to] && e.cap > e.flow) {
                    vis[e.to] = 1;
                    d[e.to] = d[x] + 1;
                    Q.push(e.to);
                }
            }
        }
        return vis[t];
    }
    int DFS(int x, int a) {
        if(x == t || a == 0) return a;
        int flow = 0, f;
        for(int &i = cur[x]; i < G[x].size(); ++i) {
            Edge &e = edges[G[x][i]];
            if(d[x] + 1 == d[e.to] && (f = DFS(e.to, min(a, e.cap-e.flow))) > 0) {
                e.flow += f;
                edges[ G[x][i] ^ 1 ].flow -= f;
                flow += f;
                a -= f;
                if(a == 0) break;
            }
        }
        return flow;
    }
    int maxFlow(int s, int t) {
        this->s = s; this->t = t;
        int flow = 0;
        while(BFS()) {
            memset(cur, 0, sizeof(cur));
            flow += DFS(s, INF);
        }
        return flow;
    }
};
int main () {
    int n, m;
    while(scanf("%d%d", &n, &m) != EOF) {
        Dinic dinic;
        for(int i = 0; i < n; ++i) {
            int s, e, c;
            scanf("%d%d%d", &s, &e, &c);
            dinic.addEdge(s, e, c);
        }
        printf("%d\n", dinic.maxFlow(1, m));
    }  
    return 0;
}
