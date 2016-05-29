#include <iostream>
#include <stdio.h>
#include <algorithm>
#include <vector>
#include <map>
#include <set>
#include <string>
#define DB
using namespace std;

int p, n, m;
map<string, vector<int> > mp;
vector< pair<string, int> >  re;
int a[110];
int main(int argc, char* argv[]) {
#ifdef DB
    freopen("in.txt", "r", stdin);
#endif
    int t, ca = 1;
    scanf("%d", &t);
    while(t--) {
        mp.clear();
        re.clear();
        scanf("%d", &p);
        for(int i = 0; i < p; ++i) {
            scanf("%d", &a[i]);
        }
        scanf("%d", &n);
        for(int i = 0; i < n; ++i) {
            int wei;
            scanf("%d", &wei);
            for(int j = 0; j < p; ++j) {
                string x;
                cin >> x;
                mp[x].push_back( wei * a[j]);
            }
        }
        scanf("%d", &m);
        for(auto it = mp.begin(); it != mp.end(); ++it) {
            sort(it->second.begin(), it->second.end());
        }
        for(auto it = mp.begin(); it != mp.end(); ++it) {
            int sum = 0;
            for(int i = 0; i < m && i < it->second.size(); ++i) {
                sum += it->second[i];
            }
            re.push_back( make_pair(it->first, sum));
        }
        sort(re.begin(), re.end(), [](const pair<string, int> &a, const pair<string, int> &b)
                { if(a.second == b.second) return a.first < b.first; return a.second > b.second;});
        printf("Case #%d:\n", ca++);
        int count = 1;
        for(int i = 0; i < re.size(); ++i) {
            if(i == 0 || re[i].second != re[i-1].second) {
                count = i+1;
                cout << count << ": " << re[i].first << endl;
            } else {
                cout << count << ": " << re[i].first << endl;
            }
        }
    }
    return 0;
}
