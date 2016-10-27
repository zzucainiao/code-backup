#include <bits/stdc++.h>
#define N 1000100

using namespace std;

int n, m, p;
int a[N], b[N], c[N], f[N];
//P patten string, f fail array, m length of P
void getFail(int *P, int *f, int m) {
    f[0] = f[1] = 0;
    for(int i = 1; i < m; ++i) {
        int j = f[i];
        while(j && P[i] != P[j]) j = f[j];
        f[i+1] = P[i] == P[j] ? j+1 : 0;
    }
}
//T long target string, P pattern string, f fail array, n length of T, m length of P
//return number of P in T, allow overlap
int findd(int *T, int *P, int *f, int n, int m) {
    int j = 0, re = 0;
    for(int i = 0; i < n; ++i) {
        while(j && (j==m || P[j] != T[i])) j = f[j];
        if(P[j] == T[i]) ++j;
        if(j == m) {
            ++re;
        }
    }
    return re;
}

int main () {
    int t, ca = 1;
    scanf("%d", &t);
    while(scanf("%d%d%d", &n, &m, &p) != EOF) {
        for(int i = 0; i < n; ++i) {
            scanf("%d", &a[i]);
        }
        for(int i = 0; i < m; ++i) {
            scanf("%d", &b[i]);
        }
        getFail(b, f, m);
        int re = 0;
        for(int i = 0; i < p; ++i) {
            int count = 0;
            for(int j = i; j < n; j+=p) {
                c[count++] = a[j];
            }
            re += findd(c, b, f, count, m);
        }
        cout << "Case #" << ca++ << ": " << re << endl;
    }
    return 0;
}
