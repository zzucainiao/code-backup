#include <iostream>
#include <cstring>

using namespace std;

int dp[10][100][100];
int pow[] = {1, 10, 100, 1000, 10000, 100000, 1000000, 10000000, 100000000, 1000000000};

int a, b, k;

int dfs(int d, int m1, int m2) {
    if(d == 0) return m1==0 && m2==0 ? 1 : 0;
    if(dp[d][m1][m2] != -1) return dp[d][m1][m2];
    dp[d][m1][m2] = 0;
    for(int i = 0; i < 10; ++i) {
        dp[d][m1][m2] += dfs(d-1, (m1+k-i%k) % k, (m2+k-(i*pow[d-1])%k)%k);
    }
    return dp[d][m1][m2];
}
int f(int x) {
    int m1 = 0, m2 = 0, d = 0, a[15];
    if(x == 0) a[d++] = 0;
    while(x) {
        a[d++] = x % 10;
        x /= 10; 
    }
    int re = 0;
    for(int i = d-1; i>=0; --i) {
        if(i != 0) {
            for(int j = 0; j < a[i]; ++j) {
                re += dfs(i, (k-(m1+j)%k) % k, (k-(m2+j*pow[i])%k) % k); 
            }
        } else {
            for(int j = 0; j <= a[i]; ++j) {
                re += dfs(i, (k-(m1+j)%k) % k, (k-(m2+j*pow[i])%k) % k); 
            }
        }
        m1 += a[i];
        m2 += a[i] * pow[i];
    }
    return re;
}
int main () {
    ios::sync_with_stdio(false);
    int t;
    cin >> t;
    while(cin >> a >> b >> k) {
        if(k > 90) {
            cout <<  0 << endl;
            continue;
        }
        memset(dp, -1, sizeof(dp));
        cout << f(b) - f(a-1) << endl;
    }
    return 0;
}
