#include <iostream>
#include <cstdio>
#include <cstring>
#include <vector>
#include <queue>
#include <map>
#define N 510
#define M 2010
#define DB

using namespace std;

int n, m, k;
struct edge{
    int a, b;
    int p[24];
} E[M];
int top = 0;
vector< int > graph[N]; 
int spfa(int end, int time) {
    --end;
    vector<int> dis(n, INT_MAX / 10);
    vector<int> vi(n, 0);
    dis[0] = time;
    vi[0]  = 1;
    queue<int> Q;
    Q.push(0);
    while(!Q.empty()) {
        int t = Q.front();
        Q.pop();
        vi[t] = 0;
        for(int i = 0; i < graph[t].size(); ++i) {
            int adj = (E[ graph[t][i] ].a == t ? E[ graph[t][i] ].b : E[ graph[t][i] ].a);
            if(dis[adj] > dis[t] + E[ graph[t][i] ].p[ dis[t] % 24 ]) {
                dis[adj] = dis[t] + E[ graph[t][i] ].p[ dis[t] % 24 ];
                if(!vi[adj]) {
                    Q.push(adj);
                    vi[adj] = 1;
                }
            }
        }
    }
    return dis[end] == INT_MAX / 10 ? -1 : dis[end]-time;
}
int main(int argc, char* argv[]) {
#ifdef DB
    freopen("in.txt", "r", stdin);
#endif
    int t, ca = 1;
    scanf("%d", &t);
    while(t--) {
        scanf("%d%d%d", &n, &m, &k);
        for(int i = 0; i < n; ++i) {
            graph[i].clear();
        }
        top = 0;
        for(int i = 0; i < m; ++i) {
            scanf("%d%d", &E[top].a, &E[top].b);
            --E[top].a;
            --E[top].b;

            for(int j = 0; j < 24; ++j) {
                scanf("%d", &E[top].p[j]);
            }
            graph[ E[top].a ].push_back(top);
            graph[ E[top].b ].push_back(top);
            ++top;
        }
        printf("Case #%d:", ca++);
        while(k--) {
            int d, s;
            scanf("%d%d", &d, &s);
            printf(" %d", spfa(d, s));
        }
        printf("\n");
    }
    return 0;
}
