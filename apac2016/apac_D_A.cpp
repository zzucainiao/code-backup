#include <iostream>
#include <cstdio>
#include <cstring>
#include <queue>
#include <map>
#define DB

using namespace std;

int r, c;
int vi[110][110];
char p[110][110];
int dir[][2] = {0, 1, 0, -1, 1, 0, -1, 0};
void bfs(int x, int y) {
    queue< pair<int, int> > Q;
    Q.push( make_pair(x, y) );
    vi[x][y] = 1;
    while(!Q.empty()) {
        pair<int, int> t = Q.front();
        Q.pop();
        for(int i = 0; i < 4; ++i) {
            int xx = t.first + dir[i][0];
            int yy = t.second + dir[i][1];
            if(xx>=0 && xx<r && yy>=0 && yy<c && !vi[xx][yy] && p[xx][yy]=='1') {
                vi[xx][yy] = 1;
                Q.push( make_pair(xx, yy) );
            }
        }
    }
}
int main(int argc, char* argv[]) {
#ifdef DB
    freopen("in.txt", "r", stdin);
#endif
    int t, ca = 1;
    scanf("%d", &t);
    while(t--) {
        scanf("%d%d", &r, &c);
        for(int i = 0; i < r; ++i) {
            scanf("%s", p[i]);
        }        
        int q;
        scanf("%d", &q);
        printf("Case #%d:\n", ca++);
        while(q--) {
            char cc;
            getchar();
            scanf("%c", &cc);
            if(cc == 'Q') {
                int re = 0;
                memset(vi, 0, sizeof(vi));
                for(int i = 0; i < r; ++i)
                for(int j = 0; j < c; ++j) {
                    if(!vi[i][j] && p[i][j] == '1') {
                        re ++;
                        bfs(i, j);
                    }
                }
                printf("%d\n", re);
            } else {
                int x, y, z;
                scanf("%d%d%d", &x, &y, &z);
                p[x][y] = z + '0';
            }
        }
    }
    return 0;
}
