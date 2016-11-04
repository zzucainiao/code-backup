#include <iostream>
#include <algorithm>
#include <cstring>
#include <cstdio>
#define N 40010
#define ULL unsigned long long
using namespace std;

int m, len, Rank[N];
ULL H[N], xp[N], Hash[N];
//这个值很重要。。。。。1234 wa
const ULL x = 123;
char p[N];

bool cmp(const int &a, const int &b) {
    return Hash[a] < Hash[b] || (Hash[a] == Hash[b] && a < b);
}
bool ok(int mid, int &rms) {
    int count = 0;
    for(int i = 0; i+mid <= len; ++i, ++count) {
        Rank[i] = i;
        Hash[i] = H[i] - H[i+mid] * xp[mid];
    }
    sort(Rank, Rank+count, cmp);
    int num = 0;
    //这里求最后一个位置很巧妙，背会代码！！还有rank的含义要注意  为什么max
    for(int i = 0; i < count; ++i) {
        if(i == 0 || (Hash[ Rank[i] ] != Hash[ Rank[i-1] ])) num = 0;
        if(++num >= m) rms = max(rms, Rank[i]);
    }
    return rms >= 0;
}
int main () {
    while(scanf("%d", &m) && m) {
        scanf("%s", p);
        len = strlen(p);
        xp[0] = 1;
        for(int i = 1; i <= len; ++i) {
            xp[i] = xp[i-1] * x;
        }
        H[len] = 0;
        for(int i = len-1; i >=0; --i) {
            H[i] = H[i+1] * x + p[i] - 'a';
        }
        int rms = -1;
        if(!ok(1, rms)) {
            cout << "none" << endl;
            continue;
        }
        int l = 1, r = len+1;
        while(l < r) {
            int mid = (l+r) >> 1;
            int rms = -1;
            if(ok(mid, rms)) {
                l = mid+1;
            } else {
                r = mid;
            }
        }
        int ans = l - 1;
        rms = -1;
        ok(ans, rms);
        cout << ans << " " << rms << endl;
    }
    return 0;
}
