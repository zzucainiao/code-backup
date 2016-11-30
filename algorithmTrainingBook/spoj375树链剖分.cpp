#include <iostream>
#include <algorithm>
#include <vector>
#include <set>
#include <map>
#include <cstdio>
#include <cstring>
#include <climits>
#include <cstdlib>
#define N 10010
using namespace std;

int n, edge[N][3];
vector<int> adj[N];
int fa[N], dep[N], size[N], son[N], top[N], id[N];
int t[N << 2];
void dfs(int x, int f, int d) {
    fa[x] = f;
    dep[x] = d;
    size[x] = 1;
    for(int i=0; i<adj[x].size(); ++i) {
        if(adj[x][i] == f)
            continue;
        dfs(adj[x][i], x, d+1);
        size[x] += size[ adj[x][i] ];
        if(son[x] == -1) {
            son[x] = adj[x][i];
        }else if(size[ son[x] ] < size[ adj[x][i] ]){
            son[x] = adj[x][i];
        }
    }
    return ;
}

int edgenum = 0;
void dfs_1(int x, int f) {
    if(son[x] != -1) {
        id[ son[x] ] = edgenum++;
        top[ son[x] ] = top[x];
        dfs_1(son[x], x);
    }
    for(int i=0; i<adj[x].size(); ++i) {
        if( adj[x][i] == f || adj[x][i] == son[x])
            continue;
        id[ adj[x][i] ] = edgenum++;
        dfs_1(adj[x][i], x);
    }
    return ;
}

void update(int f, int lx, int rx, int l, int r, int x) {
    if(l == r) {
        t[f] = x;
        return ;
    }
    int mid = (l + r) >> 1;
    if( rx <= mid ) {
        update(f<<1, lx, rx, l, mid, x);
    }else if(lx >= mid+1) {
        update(f<<1|1, lx, rx, mid+1, r, x);
    }else{
        update(f<<1, lx, mid, l, mid, x);
        update(f<<1|1, mid+1, rx, mid+1, r, x);
    }
    t[f] = max( t[f<<1], t[f<<1|1] );
    return ;
}

int query(int f, int lx, int rx, int l, int r) {
    if(lx == l && rx == r) {
        return t[f];
    }
    int mid = (l + r) >> 1;
    if( rx <= mid ) {
        return query(f<<1, lx, rx, l, mid);
    }else if(lx >= mid+1) {
        return query(f<<1|1, lx, rx, mid+1, r);
    }else{
        int a = query(f<<1, lx, mid, l, mid);
        int b = query(f<<1|1, mid+1, rx, mid+1, r);
        return max(a, b);
    }
}

int solve(int a, int b) {
    int topa = top[a];
    int topb = top[b];
    int re = 0;
    while(topa != topb) {
        if(dep[ topa ] < dep[ topb ]){
            swap(a, b);
            swap(topa, topb);
        }
        //printf("a=%d topa=%d b=%d topb=%d id[ son[topa] ]=%d id[a]=%d\n", a, topa, b, topb, id[ son[topa] ], id[a]);
        re = max(re, query(1, id[ topa ], id[a], 0, n-2));
        a = fa[topa];
        topa = top[a];
    }
    if(a == b)
        return re;
    if(dep[a] < dep[b])
        swap(a, b);
    return max(re, query(1, id[ son[b] ], id[a], 0, n-2));
}

int main(int argc, char* argv[]){
    int t;
    scanf("%d", &t);
    while(t--) {
        scanf("%d", &n);
        for(int i=0; i<n; ++i) {
            adj[i].clear();
        }
        for(int i=0; i<n-1; ++i) {
            int c;
            scanf("%d%d%d", &edge[i][0], &edge[i][1], &edge[i][2]);
            --edge[i][0];
            --edge[i][1];
            adj[ edge[i][0] ].push_back( edge[i][1] );
            adj[ edge[i][1] ].push_back( edge[i][0] );
        }
        memset(son, -1, sizeof(son));
        for(int i=0; i<n; ++i) {
            top[i] = i;
        }
        edgenum = 0;

        dfs(0, 0, 0);
        dfs_1(0, 0);
       // for(int i=0; i<n; ++i) {
         //   printf("i=%d dep=%d size=%d son=%d fa=%d top=%d id=%d\n", i, dep[i], size[i], son[i], fa[i], top[i], id[i]);
        //}
        for(int i=0; i<n-1; ++i) {
            int c = id[ edge[i][0] ];
            if( dep[ edge[i][0] ] < dep[ edge[i][1] ]){
                c = id[ edge[i][1] ];
            }
            update(1, c, c, 0, n-2, edge[i][2]);
        }
        char p[10];
        while(scanf("%s", p) && strcmp(p, "DONE") != 0) {
            if(strcmp(p, "CHANGE") == 0) {
                int a, b;
                scanf("%d%d", &a, &b);
                --a;
                int c = id[ edge[a][0] ];
                if( dep[ edge[a][0] ] < dep[ edge[a][1] ]){
                    c = id[ edge[a][1] ];
                }
                update(1, c, c, 0, n-2, b);
            }else{
                int a, b;
                scanf("%d%d", &a, &b);
                --a, --b;
                printf("%d\n", solve(a, b));
            }
        }
    }
    return 0;
}
