#include <iostream>
#include <cstring>
#define N 20
using namespace std;

int sg[1<<N];

inline int ones(int x) {
    int re = 0;
    while(x) {
        x &= (x-1);
        ++re;
    }
    return re;
}
int dp(int x) {
    if(x == (1<<ones(x))-1) {
        return sg[x] = 0;
    }
    if(sg[x] != -1) {
        return sg[x];
    }
    int a[25] = {0};
    int pre = -1; 
    for(int i = 0; i < 20; ++i) {
        if(x & (1<<i)) {
            if(pre != -1) {
                a[ dp( x - (1<<i) + (1<<pre)) ] = 1;
            }
        } else {
            pre = i;
        }
    }
    int count = 0;
    while(a[count] == 1) {
        ++count;
    }
    return sg[x] = count;
}
void init() {
    memset(sg, -1, sizeof(sg));
    sg[0] = 0;
    for(int i = 0; i < (1<<N); ++i) {
        if(sg[i] == -1) {
            sg[i] = dp(i);
        }
    }
}
int main () {
    int t, n;
    ios::sync_with_stdio(false);
    cin >> t;
    init();
    while(cin >> n) {
        int re = 0;
        for(int i = 0; i < n; ++i) {
            int a, b = 0, c;
            cin >> a;
            for(int j = 0; j < a; ++j) {
                cin >> c;
                b |= (1<<(20-c));
            }
            re ^= sg[b];
        }
        cout << (re == 0 ? "NO" : "YES") << endl;
    }
    return 0;
}
