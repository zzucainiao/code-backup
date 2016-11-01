#include <iostream>
#include <queue>
#include <cstring>
#include <cstdio>
#define maxnode 5000
#define sigma_size (26*2+10)

using namespace std;

struct AC {
    int ch[maxnode][sigma_size];
    int val[maxnode], f[maxnode], last[maxnode];
    int sz;
    AC(): sz(1) {
        val[0] = last[0] = 0;
        memset(ch[0], 0, sizeof(ch[0]));
    }
    int idx(char c) {
        if(c>='a' && c<='z') return c-'a';
        if(c>='A' && c<='Z') return c-'A' + 26;
        return c-'0' + 52;
    }
    void insert(char *s, int v) {
        int u = 0, n = strlen(s);
        for(int i = 0; i < n; ++i) {
            int c = idx(s[i]);
            if(!ch[u][c]) {
                memset(ch[sz], 0, sizeof(ch[sz]));
                val[sz] = 0;
                ch[u][c] = sz++;
            }
            u = ch[u][c];
        }
        val[u] = v;
    }
    int findWhole(char *s) {
        int u = 0, n = strlen(s);
        for(int i = 0; i < n; ++i) {
            int c = idx(s[i]);
            if(!ch[u][c]) return 0;
            u = ch[u][c];
        }
        return val[u];
    }
    void getFail() {
        queue<int> q;
        f[0] = 0;
        for(int c = 0; c < sigma_size; c++) {
            int u = ch[0][c];
            if(u) {f[u] = 0; q.push(u); last[u] = 0;}
        }
        while(!q.empty()) {
            int r = q.front(); q.pop();
            for(int c = 0; c < sigma_size; ++c) {
                int u = ch[r][c];
                if(!u) continue;
                q.push(u);
                int v = f[r];
                while(v && !ch[v][c]) v = f[v];
                f[u] = ch[v][c];
                last[u] = val[f[u]] ? f[u] : last[f[u]];
            }
        }
    }
    int findLocal(char *T) {
        int n = strlen(T);
        int j = 0;
        for(int i = 0; i < n; ++i) {
            int c = idx(T[i]);
            while(j && !ch[j][c]) j = f[j];
            j = ch[j][c];
            if(val[j]) print(j);
            else if(last[j]) print(last[j]);
        }
    }
    void print(int j) {
        if(j) {
            printf("%d: %d\n", j, val[j]);
            print(last[j]);
        }
    }
    bool hasSubStr(int u) {
        return val[u]!=0 || last[u]!=0;
    }
};
/*
 * 该版本为原始版本，相当于原始的cmp next数组
 * ch[u][c] = 0 表示u没有c子节点
 * 此时我们应该沿着u的fail指针走，直到某个指针有c子节点
 *
 * 在优化版本中ch[u][c]的值直接是 u的c子节点或者沿u fail指针走第一个有c节点的节点的c节点编号
 *
 * 该版本中查找u的c子节点不存在时要自己写一个找第一个有u节点fail指针的程序
        int ff = u;
        while(ff && !ac.ch[ff][c]) ff = ac.f[ff];
 */

double pro[sigma_size], dp[maxnode][110];
char a[100];
double solve(int u, int l, AC &ac) {
    if(l == 0) return 1.0;
    if(dp[u][l] != -1) return dp[u][l];
    double re = 0;
    for(int c = 0; c < sigma_size; ++c) {
        if(pro[c] == 0) continue;
        int ff = u;
        while(ff && !ac.ch[ff][c]) ff = ac.f[ff];
        if(!ac.hasSubStr( ac.ch[ff][c] )) {
            re += pro[c] * solve(ac.ch[ff][c], l-1, ac);
        }
        /*
        if(ac.ch[u][c] && !ac.hasSubStr( ac.ch[u][c] )) {
            re += pro[c] * solve(ac.ch[u][c], l-1, ac);
        } else if(!ac.ch[u][c]) {
            re += pro[c] * solve(0, l-1, ac);
        }
        */
    }
    //printf("%d %d %lf\n", u, l, re);
    return dp[u][l] = re;
}
int main () {
    int t, ca = 1, n;
    scanf("%d", &t);
    while(t--) {
        scanf("%d", &n);
        AC ac;
        for(int i = 0; i < n; ++i) {
            scanf("%s", a);
            ac.insert(a, 1);
        }
        ac.getFail();
        scanf("%d", &n);
        memset(pro, 0, sizeof(pro));
        for(int i = 0; i < n; ++i) {
            char c;
            double p;
            scanf("\n%c%lf", &c, &p);
            pro[ ac.idx(c) ] = p;
        }
        int l;
        scanf("%d", &l);
        for(int i = 0; i < maxnode; ++i) {
            for(int j = 0; j < 110; ++j) dp[i][j] = -1;
        }
        printf("Case #%d: %.6lf\n", ca++, solve(0, l, ac));
    }
    return 0;
}
