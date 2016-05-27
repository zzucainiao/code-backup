#include <cstdio>
#include <iostream>
#include <vector>

using namespace std;

int patition(vector<int> &v, int s, int e) {
    if(s >= e) {
        return s;
    }
    int mid = v[s];
    while(s < e) {
        while(s < e && v[e] >= mid) --e;
        v[s] = v[e];
        while(s < e && v[s] <= mid) ++s;
        v[e] = v[s];
    }
    v[s] = mid;
    return s;
}
int ksnum(vector<int> &v, int k) {
    if(k >= v.size()) {
        return -1;
    }
    int s = 0, e = v.size()-1;
    int index = patition(v, s, e);
    while(index != k) {
        if(index > k) {
            e = index - 1;
            index = patition(v, s, e);
        } else {
            s = index + 1;
            index = patition(v, s, e);
        }
    }
    return v[index];
}
int main () {
    int n, k;
    while(cin >> n) {
        vector<int> v;
        for(int i = 0; i < n; ++i) {
            int a;
            cin >> a;
            v.push_back(a);
        } 
        cin >> k;
        cout << ksnum(v, k) << endl;
    }
    return 0;
}
