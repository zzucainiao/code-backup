#include <iostream>
#include <cstdio>
#include <cstring>
#include <vector>
#include <queue>
#include <map>
#include <set>
#define N 2010
#define DB

using namespace std;

int a[3][N];
int x[3];
struct R{
    long long a, b;
    int p;
    bool operator<(const R &r) const{
        if(a * r.b != b * r.a) 
            return a * r.b < b * r.a;
        return p < r.p;
    }
    R(long long x, long long y, int z) {
        /*
        long long g = gcd(x, y);
        a = x / g;
        b = y / g;
        */
        a = x;
        b = y;
        p = z;
    }
    bool equ(const R &r) const{
        return a * r.b == b * r.a;
    }
    long long gcd(long long x, long long y) {
        return x == 0 ? y : gcd(y, x%y);
    }
};

int main(int argc, char* argv[]) {
#ifdef DB
    freopen("in.txt", "r", stdin);
#endif
    int t, ca = 1;
    scanf("%d", &t);
    while(t--) {
        scanf("%d%d%d", &x[0], &x[1], &x[2]);
        for(int i = 0; i < 3; ++i) {
            for(int j = 0 ; j < x[i]; ++j) {
                scanf("%d", &a[i][j]);
            }
        }
        set<R> s;
        for(int i = 0; i < x[0]; ++i)
        for(int j = 0; j < x[1]; ++j) {
            s.insert( R(a[1][j], a[0][i], j));
        }
        int m;
        scanf("%d", &m);
        printf("Case #%d:\n", ca++);
        while(m--) {
            long long xx, yy;
            scanf("%lld%lld", &yy, &xx);
            bool flag = false;
            for(int i = 0; i < x[1]; ++i)
            for(int j = 0; j < x[2]; ++j) {
                R r(xx * a[1][i], yy * a[2][j], i);
                //cout << xx << " " << yy << " " << a[1][i] << " " << a[2][j] << endl;
                auto it = s.lower_bound(r);
                if(it != s.begin()) {
                    --it;
                    if(it->p != i && it->equ(r)) {
                        flag = true;
                        goto out;
                    }
                    ++it;
                } 
                if(it != s.end()) {
                    if(it->p != i && it->equ(r)) {
                        flag = true;
                        goto out;
                    }
                    ++it;
                    if(it != s.end()) {
                        if(it->p != i && it->equ(r)) {
                            flag = true;
                            goto out;
                        }
                    }
                    --it;
                } 
            }
out:;
            printf("%s\n", flag ? "Yes" : "No");
        }
    }
    return 0;
}
