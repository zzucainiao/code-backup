//#include <bits/stdc++.h>
#include <vector>
#include <queue>
#include <cstdio>
#include <cstring>
#define INF 0x3fffffff
#define maxn 11000
using namespace std;

struct Edge {
    int from, to, cap, flow, cost;
    Edge(int from, int to, int cap, int flow, int cost): from(from), to(to), cap(cap), flow(flow), cost(cost){
    }
};
struct MCMF {
    int n, m, s, t;
    vector<Edge> edges;
    vector<int> G[maxn];
    int inq[maxn], d[maxn], p[maxn], a[maxn];

    MCMF(int n) {
        init(n);
    }
    void init(int n) {
        this->n = n;
        for(int i = 0; i < n; ++i) {
            G[i].clear();
        }
        edges.clear();
    } 
    void addEdge(int from, int to, int cap, int cost) {
        edges.push_back( Edge(from, to, cap, 0, cost) );
        edges.push_back( Edge(to, from, 0, 0, -cost) );
        m = edges.size();
        G[from].push_back(m-2);
        G[to].push_back(m-1);
    }
    bool BellmanFord(int s, int t, int &flow, int &cost) {
        for(int i = 0; i < n; ++i) d[i] = INF;
        memset(inq, 0, sizeof(inq));
        d[s] = 0; inq[s] = 1; p[s] = 0; a[s] = INF;
        queue<int> Q;
        Q.push(s);
        while(!Q.empty()) {
            int u = Q.front(); Q.pop();
            inq[u] = 0;
            for(int i = 0; i < G[u].size(); ++i) {
                Edge &e = edges[G[u][i]];
                if(e.cap > e.flow && d[e.to] > d[u] + e.cost) {
                    d[e.to] = d[u] + e.cost;
                    p[e.to] = G[u][i];
                    a[e.to] = min(a[u], e.cap - e.flow);
                    if(!inq[e.to]) { Q.push(e.to); inq[e.to] = 1;}
                }
            }
        }
        if(d[t] == INF) return false;
        flow += a[t];
        cost += d[t] * a[t];
        int u = t;
        while(u != s) {
            edges[p[u]].flow += a[t];
            edges[p[u]^1].flow -= a[t];
            u = edges[p[u]].from;
        }
        return true;
    }
    void minCost(int s, int t, int &flow, int &cost) {
        while(BellmanFord(s, t, flow, cost)) {
            ;
        }
    }
};
struct FORD {
    int n, m, s, t;
    vector<Edge> edges;
    vector<int> G[maxn];
    int a[maxn], p[maxn];

    FORD(int n) {
        init(n);
    }
    void init(int n) {
        this->n = n;
        for(int i = 0; i < n; ++i) {
            G[i].clear();
        }
        edges.clear();
    } 
    void addEdge(int from, int to, int cap, int cost=0) {
        edges.push_back( Edge(from, to, cap, 0, cost) );
        edges.push_back( Edge(to, from, 0, 0, -cost) );
        m = edges.size();
        G[from].push_back(m-2);
        G[to].push_back(m-1);
    }
    bool BellmanFord(int s, int t, int &flow) {
        queue<int> Q;
        memset(a, 0, sizeof(a));
        a[s] = INF;
        Q.push(s);
        while(!Q.empty()) {
            int u = Q.front(); Q.pop();
            for(int i = 0; i < G[u].size(); ++i) {
                Edge &e = edges[G[u][i]];
                if(!a[e.to] && e.cap > e.flow) {
                    p[e.to] = G[u][i];
                    Q.push(e.to);
                    a[e.to] = min(a[u], e.cap - e.flow);
                }
            }
        }
        if(a[t] == 0) return false;
        printf("%d\n", a[t]);
        flow += a[t];
        int u = t;
        while(u != s) {
            edges[p[u]].flow += a[t];
            edges[p[u]^1].flow -= a[t];
            u = edges[p[u]].from;
        }
        return true;
    }
    void minCost(int s, int t, int &flow) {
        while(BellmanFord(s, t, flow)) {
            ;
        }
    }
};
int main () {
    int n, m;
    while(scanf("%d%d", &n, &m) != EOF) {
        FORD ford(m+1);
        for(int i = 0; i < n; ++i) {
            int s, e, c;
            scanf("%d%d%d", &s, &e, &c);
            ford.addEdge(s, e, c);
        }
        int flow = 0;
        ford.minCost(1, m, flow);
        printf("%d\n", flow);
    }  
    return 0;
}
