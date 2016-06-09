#include <iostream>
#include <cstdio>

using namespace std;

int dp[110][110];
/*
int dfs(int n, int k) {
    int re;
    if(n < k) {
        re = dp[n][k];
    } else {
        int x = dfs(n-n/k, k);
        re = (n/k*k + x + (x < n-(n/k*k) ? 0 : (x - (n-n/k*k))/(k-1) )) % n;
    }
    cout << n << " " << k << " " << re << endl;
    return re;
}
//编号从此轮最后一个死人的下一个开始编号
*/

int dfs(int n, int k) {
    if(n == k) {
        return k-1;
    }
    int x = dfs(n-n/k, k);
    return (x + x/(k-1)) % n;
}

int main () {
    int t;
    for(int k = 1; k < 101; ++k)
    for(int n = 1; n < k; ++n) {
       if(n == 1) dp[n][k] = 0;
       else
          dp[n][k] = (dp[n-1][k] + k) % n; 
    }
    scanf("%d", &t);
    while(t--) {
        int n, k;
        scanf("%d%d", &n, &k);
        printf("%d\n", dfs(n, k)+1);
    }
    return 0;
}
