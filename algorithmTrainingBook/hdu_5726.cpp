#include <iostream>
#include <map>
#define N 100010

using namespace std;

int n, m, x, y, a[N];
int t[N << 2];
int gcd(int x, int y) {
    return y == 0 ? x : gcd(y, x%y);
}
void build(int f, int l, int r) {
    if(l == r) {
        t[f] = a[l];
        return ;
    }
    int mid = (l+r) >> 1;
    build(f<<1, l, mid);
    build(f<<1|1, mid+1, r);
    t[f] = gcd(t[f<<1], t[f<<1|1]);
}
int quary(int f, int l, int r, int lx, int rx) {
    if(l == lx && r == rx) {
        return t[f];
    }
    int mid = (l+r) >> 1;
    if(rx <= mid) {
        return quary(f<<1, l, mid, lx, rx);
    } else if(mid+1 <= lx) {
        return quary(f<<1|1, mid+1, r, lx, rx);
    } else {
        return gcd( quary(f<<1, l, mid, lx, mid), quary(f<<1|1, mid+1, r, mid+1, rx) );
    }
}
map<int, long long> mp;
int main () {
    int t, ca = 1;
    ios::sync_with_stdio(false);
    cin >> t;
    while(cin >> n) {
        for(int i = 1; i <= n; ++i) {
            cin >> a[i];
        }
        build(1, 1, n);
        mp.clear();
        map<int, long long> mp1, mp2;
        map<int, long long> *p1 = &mp1, *p2 = &mp2;
        for(int i = 1; i <= n; ++i) {
            p2->clear();
            ++(*p2)[ a[i] ];
            for(auto it: *p1) {
                (*p2)[ gcd(it.first, a[i] ) ] += it.second; 
            }
            for(auto it: *p2) {
                mp[ it.first ] += it.second;
            }
            map<int, long long> *tmp = p2;
            p2 = p1;
            p1 = tmp;
        }
        cin >> m;
        cout << "Case #" << ca++ << ":" << endl;
        while(m--) {
            cin >> x >> y;
            int g = quary(1, 1, n, x, y);
            cout << g << " " << mp[ g ] << endl;
        }
    }
    return 0;
}
