#include <iostream>
#include <queue>
#include <cstring>
#include <cstdio>
#define maxnode 5000
#define sigma_size (26*2+10+1)

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
                //if(!u) continue;
                if(!u) {
                    ch[r][c] = ch[f[r]][c];
                    continue;
                }
                q.push(u);
                int v = f[r];
                while(v && !ch[v][c]) v = f[v];
                f[u] = ch[v][c];
                last[u] = val[f[u]] ? f[u] : last[f[u]];
                //val[u] |= val[f[u]];
            }
        }
    }
    int findLocal(char *T) {
        int n = strlen(T);
        int j = 0;
        for(int i = 0; i < n; ++i) {
            int c = idx(T[i]);
            //while(j && !ch[j][c]) j = f[j];
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
/* f为fail指针
 * last为沿fail指针往上第一个是单词的位置(val != 0)
 * 这个是优化版本，ch[u][c] 表示u节点的c子节点的下表
 * 1 如果在tril树中u节点有c子节点则为 该子节点编号
 * 2 如果没有，则ch[u][c] = ch[f[u]][c], 即
 *      v = u;
 *      while(v && !ch[f[v]][c]) v = f[v]
 *      ch[u][c] = ch[v][u];
 *   一直找到某个fail指针有c子节点，相当于优化的cmp next数组
 */

double pro[sigma_size], dp[maxnode][110];
int vi[maxnode][110];
char a[100];
double solve(int u, int l, AC &ac) {
    if(l == 0) return 1.0;
    if(vi[u][l]) return dp[u][l]; 
    vi[u][l] = 1;
    double &re = dp[u][l];
    re = 0.0;
    for(int c = 0; c < sigma_size; ++c) {
        if(pro[c] == 0) continue;
        if(!ac.hasSubStr( ac.ch[u][c] )) {
            re += pro[c] * solve(ac.ch[u][c], l-1, ac);
        }
        /* 对ch数组和f数组理解不深刻！！
        if(ac.ch[u][c] && !ac.hasSubStr( ac.ch[u][c] )) {
            re += pro[c] * solve(ac.ch[u][c], l-1, ac); 
        } else if(!ac.ch[u][c]) {
            re += pro[c] * solve(0, l-1, ac);
        }
        */
    } 
    //printf("%d %d %lf\n", u, l, re);
    return re;
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
        memset(vi, 0, sizeof(vi));
        printf("Case #%d: %.6lf\n", ca++, solve(0, l, ac));
    } 
    return 0;
}
