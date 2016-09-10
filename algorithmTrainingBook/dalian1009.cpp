#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <climits>
#include <cmath>
#include <cfloat>

#include <algorithm>
#include <vector>
#include <map>
#include <set>
#include <queue>
#include <stack>
#include <functional>
#include <string>
#define EXP 1e-9
#define LL long long
#define PB push_back
#define N 200010

using namespace std;

vector<int> mp[N];
struct node {
    int l, r, k, dis;
} nn[N];

int n, m;
void init() {
    nn[0].l = -1;
    for(int i = 0; i < n; ++i) {
        if(i != 0)
            nn[i].l = (i+n-1) % n;
        if(i != n-1)
            nn[i].r = (i+1) % n;
        nn[i].dis = -1;
    }
    nn[ n-1 ].r = -1;
}
void del(int x) {
    nn[ nn[x].l ].r = nn[x].r;
    nn[ nn[x].r ].l = nn[x].l;
}

void bfs(int s) {
    queue<int> Q;
    Q.push(s);
    nn[s].dis = 0;
    int hh = 0;
    del(s);
    if(hh == s) {
        hh = nn[s].r;
    }
    while(!Q.empty()) {
        int tmp = Q.front();
        Q.pop();
        int s = 0;
        int head = hh;
        for(int i = 0; i < mp[tmp].size(); ++i) {
            while(head != -1 && head < mp[tmp][i]) {
                if(head >= s && head < mp[tmp][i]) {
                    del(head);
                    if(hh == head) {
                        hh = nn[head].r;
                    }
                    nn[head].dis = nn[tmp].dis + 1;
                    Q.push(head);
                }
                head = nn[head].r; 
            }
            s = mp[tmp][i] + 1;
        }
    }
}
int main(int argc, char* argv[]) {
    int t;
    ios::sync_with_stdio(false);
    cin >> t;
    while(t--) {
        cin >> n >> m;
        init();
        for(int i = 0; i < n; ++i) {
            mp[i].clear();
        }
        for(int i = 0; i < m; ++i) {
            int a, b;
            cin >> a >> b;
            --a, --b;
            mp[a].push_back(b);
            mp[b].push_back(a);
        }
        for(int i = 0; i < n; ++i) {
            mp[i].push_back(n);
        }
        int s;
        cin >> s;
        --s;
        bfs(s);
        bool first = true;
        for(int i = 0; i < n; ++i) {
            if(i == s) continue;
            if(first) {
                first = false;
            } else {
                cout << " ";
            }
            cout << nn[i].dis;
        }
        cout << endl;
    }
    return 0;
}

