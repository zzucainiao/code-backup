#include <iostream>
#include <cstdio>
#include <map>
#define DB
#define N 1010
using namespace std;

int p[4][N];
int main(int argc, char* argv[]) {
#ifdef DB
    freopen("in.txt", "r", stdin);
#endif
    int t, ca = 1;
    scanf("%d", &t);
    while(t--) {
        int n, k;
        scanf("%d%d", &n, &k);
        for(int i = 0; i < 4; ++i)
        for(int j = 0; j < n; ++j) {
            scanf("%d", &p[i][j]);
        }
        map<int, int> mp1;
        map<int, int> mp2;
        for(int i = 0; i < n; ++i)
        for(int j = 0; j < n; ++j) {
            mp1[ p[0][i] ^ p[1][j] ] ++;
        }
        for(int i = 0; i < n; ++i)
        for(int j = 0; j < n; ++j) {
            mp2[ p[2][i] ^ p[3][j] ] ++;
        }
        long long re = 0;
        for(map<int, int>::iterator it = mp1.begin(); it != mp1.end(); ++it) {
            re += (long long)it->second * mp2[ it->first ^ k]; 
        }
        printf("Case #%d: %lld\n", ca++, re);
    }
    return 0;
}
