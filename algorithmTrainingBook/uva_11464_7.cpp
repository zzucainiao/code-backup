#include <cstdio>
#include <climits>
#include <cstring>

#include <iostream>
#define N 20

using namespace std;

int A[N][N], B[N][N];
int n;

int check(int s) {
    memset(B, 0, sizeof(B));
    for(int i = 0; i < n; ++i) {
        if(s & (1<<i)) {
            B[0][i] = 1;
        } else if(A[0][i] == 1) {
            return INT_MAX;
        }
    }
    for(int i = 1; i < n+1; ++i) {
        for(int j = 0; j < n; ++j) {
            int sum = 0;
            if(i-1 >= 1) sum += B[i-2][j];
            if(j-1 >= 0) sum += B[i-1][j-1];
            if(j+1 < n)  sum += B[i-1][j+1];
            B[i][j] = sum % 2;
            if(i == n && B[i][j] == 1) return INT_MAX;
            if(i != n && B[i][j] == 0 && A[i][j] == 1) return INT_MAX;
        }
    }
    int re = 0;
    for(int i = 0; i < n; ++i)
    for(int j = 0; j < n; ++j) {
        if(B[i][j] != A[i][j]) {
            ++re;
        }
    }
    return re;
}
int main () {
    int T;
    cin >> T;
    for(int kase = 1; kase <= T; ++kase) {
        memset(A, 0, sizeof(A));
        cin >> n;
        for(int i = 0; i < n; ++i)
        for(int j = 0; j < n; ++j) {
            cin >> A[i][j];
        }
        int ans = INT_MAX;
        for(int i = 0; i < (1<<n); ++i) {
            ans = min(ans, check(i));
        }
        if(ans == INT_MAX) {
            ans = -1;
        }
        printf("Case %d: %d\n", kase, ans);
    }
    return 0;
}
