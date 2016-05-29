#include <iostream>
#include <cstdio>
#define DB
using namespace std;

int v[1010];
int p[110][2];
int N, M, Q;
bool ok(int tm) {
    int q = 0;
    for(int i = 0; i < N; ++i) {
        if(p[i][0] == 0) {
            continue;
        }
        for(int j = 0; j <= M; ++j) {
            if(p[i][1] + j >= M && p[i][1] - j < 0) {
                return false;
            }

            int d = abs(p[i][0]);
            
            if(p[i][1] + j < M) {
                int vv = abs(v[ p[i][1] + j ]);
                if(p[i][0] * v[ p[i][1] + j] < 0 
                        && (d%vv==0 ? d/vv:(d/vv+1)) <= tm) {
                    q += j;
                    break;
                }
            }

            if(p[i][1] - j >= 0) {
                int vv = abs(v[ p[i][1] - j ]);
                if(p[i][0] * v[ p[i][1] - j] < 0 
                        && (d%vv==0 ? d/vv:(d/vv+1)) <= tm) {
                    q += j;
                    break;
                }
            }
        }
    }
    return q <= Q;
}
int main(int argc, char* argv[]) {
#ifdef DB
    freopen("in.txt", "r", stdin);
#endif
    int t, ca = 1;
    scanf("%d", &t);
    while(t--) {
        scanf("%d%d%d", &N, &M, &Q);
        for(int i = 0; i < M; ++i) {
            scanf("%d", &v[i]);
        }
        for(int i = 0; i < N; ++i) {
            scanf("%d%d", &p[i][0], &p[i][1]);
        }
        int l = 0, h = 10010;
        while(l < h) {
            int mid = (l + h) >> 1;
            if(ok(mid)) {
                h = mid;
            } else {
                l = mid+1;
            }
        }
        printf("Case #%d: ", ca++);
        if(l == 10010) {
            printf("IMPOSSIBLE\n");
        } else {
            printf("%d\n", l);
        }
    }
    return 0;
}
