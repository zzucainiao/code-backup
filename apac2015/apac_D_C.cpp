#include <iostream>
#include <cstdio>
#include <cstring>
#include <string>
#define DB
using namespace std;

int n;
char p[10010][40];
char rre[40];
void out() {
    int m = 0;
    for(int i = 0; rre[i] != 2; ++i) {
        ++m;
    }
    unsigned int re = 0;
    for(int i = 0; i < m ; ++i) {
        re |= ((unsigned int)rre[i] << (31 - i));
    }
    printf("%u.", (re>>24) & ((1u<<8) - 1));
    printf("%u.", (re>>16) & ((1u<<8) - 1));
    printf("%u.", (re>>8) & ((1u<<8) - 1));
    printf("%d", (re) & ((1u<<8) - 1));
    printf("/%d\n", m);
} 
void atos(int x) {
    unsigned int t = 0, m = 0;
    unsigned int tmp = 0, num = 3;
    for(int i = 0; i < strlen(p[x]); ++i) {
        if(p[x][i] == '.' || p[x][i] == '/') {
            t += (tmp << (num*8));
            --num;
            tmp = 0;
        } else {
            tmp = tmp*10 + p[x][i]-'0';
        }
    }
    m = tmp;
    for(int i = 0; i < m; ++i) {
        p[x][i] = ((t >> (31-i)) & 1);
    }
    p[x][m] = 2;
}
struct node {
    int l, r;
    bool e;
    void clear() {
        l = r = -1;
        e = false;
    }
} tr[10010000];
int top = 0;
void addtree(int f, int x, int pos) {
    if(p[x][pos] == 2) {
        tr[f].e = true;
        return ;
    }
    if(tr[f].e)
        return ;
    if(p[x][pos] == 0) {
        if(tr[f].l == -1) {
            tr[f].l = ++top;
            tr[top].clear();
        }
        addtree(tr[f].l, x, pos+1);
    } else {
        if(tr[f].r == -1) {
            tr[f].r = ++top;
            tr[top].clear();
        }
        addtree(tr[f].r, x, pos+1);
    }
    if(tr[ tr[f].l ].e && tr[ tr[f].r ].e) {
        tr[f].e = true;
    }
}

int ttop = 0;
void output(int f, int d) {
    if(tr[f].e) {
        rre[d] = 2;
        out();
        ++ttop;
        return;
    }
    if(tr[f].l != -1) {
        rre[d] = 0;
        output(tr[f].l, d+1);
    }
    if(tr[f].r != -1) {
        rre[d] = 1;
        output(tr[f].r, d+1);
    }
}
int main(int argc, char* argv[]) {
#ifdef DB
    freopen("in.txt", "r", stdin);
#endif
    int t, ca = 1;
    scanf("%d", &t);
    while(t--) {
        int n;
        scanf("%d", &n);
        tr[0].clear();
        top = 0;
        for(int i = 0; i < n; ++i) {
            scanf("%s", p[i]);
            atos(i);
            addtree(0, i, 0);
        } 
        ttop = 0;
        printf("Case #%d:\n", ca++);
        output(0, 0);
        /*
        for(int i = 0; i < ttop; ++i) {
            int m = 0;
            for(int j = 0; p[i][j] != 2; ++j) {
                m++;
            }
            out(i, m);
        }
        */
    }
    return 0;
}
