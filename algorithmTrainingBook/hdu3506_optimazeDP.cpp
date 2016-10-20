#include <cstdio>
#include <algorithm>
#include <cstring>
#include <iostream>
#include <climits>
#define N 2010

using namespace std;
int n, a[N];
int dp[N][N], p[N][N], sum[N][N];
int main () {
    while(cin >> n) {
        for(int i = 0; i < n; ++i) {
            cin >> a[i];
            a[i+n] = a[i];
            dp[i][i] = dp[i+n][i+n] = 0;
            p[i][i] = i;
            p[i+n][i+n] = i+n;
            sum[i][i] = a[i];
            sum[i+n][i+n] = a[i];
        }
        for(int i = 0; i < 2*n; ++i) {
            for(int j = i+1; j<2*n; ++j) {
                sum[i][j] = sum[i][j-1] + a[j];
                //cout << i << " " << j << " " << sum[i][j] << endl;
            }
        } 
        for(int l = 2; l <= n; ++l) {
            for(int i = 0; i+l-1<2*n; ++i) {
                int j = i+l-1, pos;
                dp[i][j] = INT_MAX;
                for(int k = p[i][j-1]; k <= p[i+1][j]; ++k) {
                    if(dp[i][k]+dp[k+1][j]+sum[i][j] < dp[i][j]) {
                        dp[i][j] = dp[i][k]+dp[k+1][j]+sum[i][j];
                        pos = k;
                    }
                }
                p[i][j] = pos;
            }
        }
        int re = INT_MAX;
        for(int i = 0; i < n; ++i) {
            re = min(re, dp[i][i+n-1]);
        }
        cout << re << endl;
    }
    return 0;
}
