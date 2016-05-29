#include <iostream>
#include <string>
#include <cstring>
#include <cstdio>
#define DB
using namespace std;
#define DAY (60*60*24)

string g, w, h, b, x;
long long G, W, H, B, X;
int sstoi(string t) {
    int h, m, s;
    sscanf(t.c_str(), "%d:%d:%d", &h, &m, &s);
    int re = (h * 60 + m) * 60 + s;
    return re;
} 
bool can(long long t) {
    t %= DAY;
    return (t>=G && t<W) || (t>=H && t<B);
}
bool work(long long t) {
    t %= DAY;
    return t>=W && t<H;
}
int main(int argc, char* argv[]) {
#ifdef DB
    freopen("in.txt", "r", stdin);
#endif
    int t, ca = 1;
    scanf("%d", &t);
    while(t--) {
        cin >> g >> w >> h >> b >> x;
        G = sstoi(g);
        W = sstoi(w);
        H = sstoi(h);
        B = sstoi(b);
        X = sstoi(x);

        long long d;
        scanf("%lld", &d);
        
        long long now = 0, re = 0, rre = -1;
        long long len = d * DAY;
        printf("Case #%d: ", ca++);
        if(H-W >= X) {
            printf("-1\n");
            continue;
        }
        if(d == 1) {
            long long last = now;
            while(now < len) {
                long long tmp = now + X;
                if(tmp >= len) {
                    break;
                }
                if(can(tmp)) {
                    now += X;
                } else {
                    if(work(tmp)) {
                        now += X - ((tmp) % DAY - W) - 1;
                    } else {
                        now += X - ((tmp) % DAY + ( tmp % DAY >= B ? 0 : DAY) - B) - 1;
                    }
                }
                if(now == last) {
                    re = -1;
                    break;
                } else {
                    last = now;
                }
                ++re;
            }
            printf("%lld\n", re);
            continue;
        }
        if((G+DAY-B >= X)) {
            printf("-1\n");
            continue;
        }

        while(now < len) {
            long long tmp = now + X;
            if(tmp >= len) {
                break;
            }
            if(can(tmp)) {
                now += X;
            } else {
                if(work(tmp)) {
                    now += X - ((tmp) % DAY - W) - 1;
                } else {
                    now += X - ((tmp) % DAY + ( tmp % DAY >= B ? 0 : DAY) - B) - 1;
                }
            }
            ++re;
            if(now % DAY == 0) {
                rre = re * (d / (now / DAY));
                len = d % ((now / DAY) ) * DAY;
                break;
            }
        }
        if(rre != -1) { 
            now = 0;
        }
        while(now < len) {
            long long tmp = now + X;
            if(tmp >= len) {
                break;
            }
            if(can(tmp)) {
                now += X;
            } else {
                if(work(tmp)) {
                    now += X - ((tmp) % DAY - W) - 1;
                } else {
                    now += X - ((tmp) % DAY + ( tmp % DAY >= B ? 0 : DAY) - B) - 1;
                }
            }
            ++rre;
        }
        if(rre != -1) re = rre;
        printf("%lld\n", now == len ? re-1:re);
    }
    return 0;
}
