#include <iostream>
#include <algorithm>
#include <vector>
#define LL long long
#define N 1000010

using namespace std;

LL a[N];
int main () {
    int n;
    ios::sync_with_stdio(false);
    while(cin >> n) {
        LL sum = 0;
        for(int i = 0; i < n; ++i) {
            cin >> a[i];
            sum += a[i];
        }
        if(n == 1) {
            cout << "0" << endl;
            continue;
        }
        sum /= n;
        vector<LL> v;
        v.push_back(0);
        LL s = 0;
        for(int i = 1; i < n; ++i) {
            s += a[i-1]; 
            v.push_back(i*sum - s);             
        }
        sort(v.begin(), v.end());
        LL x = v[ v.size() / 2 ];
        LL re = 0;
        for(int i = 0; i < v.size(); ++i) {
            re += abs(v[i] - x);
        }
        cout << re << endl;
    }
    return 0;
}
