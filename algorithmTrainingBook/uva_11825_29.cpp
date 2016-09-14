#include <algorithm>
#include <iostream>
#include <cstring>
using namespace std;

int p[20], cov[1000100], dp[100010];
int main () {
    int n, ca = 1;
    while(cin >> n) {
        if(n == 0) break ;
        memset(p, 0, sizeof(p));
        memset(cov, 0, sizeof(cov));
        memset(dp, 0, sizeof(dp));
        for(int i = 0; i < n; ++i) {
            int a, b;
            cin >> a;
            p[i] = (1<<i);
            for(int j = 0; j < a; ++j) {
                cin >> b;
                p[i] |= (1<<b);
            }
        }
        for(int i = 0; i < (1<<n); ++i) {
            for(int j = 0; j < n; ++j) {
                if(i & (1<<j))cov[i] |= p[j];
            }
        }
        int re = 0;
        for(int i = 0; i < (1<<n); ++i) {
            for(int j = i; j; j=((j-1)&i)) {
                if(cov[j] == (1<<n)-1) {
                    dp[i] = max(dp[i], dp[i ^ j] + 1);
                    re = max(re, dp[i]);
                }
            }
        }
        cout << "Case " << ca++ << ": " << re << endl;
    }
    return 0;
}
