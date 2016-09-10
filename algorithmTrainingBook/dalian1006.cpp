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
#define N 100010

using namespace std;

vector<int> v;
int main(int argc, char* argv[]) {
    int n, t;
    ios::sync_with_stdio(false);
    while(cin >> t) {
        while(t--) {
            cin >> n;
            LL sum = 0;
            v.clear();
            for(int i = 0; i < n; ++i) {
                int a;
                cin >> a;
                v.push_back(a);
                sum += a;
            }
            if(sum != (LL)n * (n-1)) {
                cout << "F" << endl;
                continue;
            }
            bool flag = true;
            for(int i = 0; i < v.size(); ++i) {
                sort(v.begin() + i, v.end(), greater<int>());
                for(int j = v.size()-1; j>i; --j) {
                    if(v[i] >= 2){
                        v[i] -= 2;
                    } else if(v[i] > 0) {
                        v[i] -= 1;
                        v[j] -= 1;
                    } else {
                        v[j] -= 2;
                    }
                    if(v[j] < 0) {
                        flag = false;
                        break;
                    }
                }
                if(v[i] != 0) {
                    flag = false;
                    break;
                }
            } 
            cout << (flag ? "T" : "F") << endl;
        }
    }
    return 0;
}

