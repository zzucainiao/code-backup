#include <iostream>
#include <queue>
#include <list>
#include <algorithm>
#include <cstring>
#define N 100010
using namespace std;

int dis[N], sumw[N], sumdis[N], dp[N];
int d[N][2];
int main () {
    int t;
    cin >> t;
    while(t--) {
        int w, n;
        cin >> w >> n;
        sumdis[0] = 0;
        sumw[0] = 0;
        d[0][0] = d[0][1] = 0;
        for(int i = 1; i <= n; ++i) {
            int x, y, z;
            cin >> x >> y >> z;
            d[i][0] = x, d[i][1] = y;
            dis[i] = abs(x) + abs(y);
            sumdis[i] = sumdis[i-1] + abs(d[i][0]-d[i-1][0]) + abs(d[i][1]-d[i-1][1]);
            sumw[i] = sumw[i-1] + z;
        }
        list< pair<int, int> > Q;
        dp[0] = 0;
        Q.push_back(make_pair(0, 0));
        for(int i = 1; i <= n; ++i) {
            while(!Q.empty() && sumw[i] - sumw[ Q.front().second ] > w) {
                Q.pop_front();
            }
            int mn = 0;
            if(!Q.empty()) {
                mn = Q.front().first;
            }
            dp[i] = mn + sumdis[i] + dis[i];
            //cout << i << " " << mn << " " << dp[i] << endl;
            int push = dp[i] + dis[i+1] - sumdis[i+1];
            while(!Q.empty() && push <= Q.back().first) {
                Q.pop_back();
            }
            Q.push_back( make_pair(push, i) );
        }
        cout << dp[n] << endl;
        if(t) cout << endl;
    }
}
