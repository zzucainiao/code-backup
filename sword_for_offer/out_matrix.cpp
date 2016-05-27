#include <cstdio>
#include <iostream>
#include <vector>

using namespace std;

int dir[4][2] = {0, 1, 1, 0, 0, -1, -1, 0};
void out(const vector< vector<int> > &mtx) {
    if(mtx.size() == 0) return ;
    int n = mtx.size();
    int m = mtx[0].size();
    int x = 0, y = 0;
    while(n > 0 && m > 0) {
        for(int i = 0; i < m; ++i) {
            cout << mtx[x][y+i] << " ";
        }
        bool flag = false;
        for(int i = 1; i < n; ++i) {
            flag = true;
            cout << mtx[x+i][y+m-1] << " ";
        }
        if(!flag) break;
        flag = false;
        for(int i = m-2; i>=0; --i) {
            flag = true;
            cout << mtx[x+n-1][y+i] << " ";
        }
        if(!flag) break;
        for(int i = n-2; i>0; --i) {
            cout << mtx[x+i][y] << " ";
        }
        n -= 2;
        m -= 2;
        ++x;
        ++y;
    } 
    cout << endl;
}
int main () {
    int n, m;
    while(cin >> n >> m) {
        vector< vector<int> > mtx;
        for(int i = 0; i < n; ++i) {
            vector<int> a;
            for(int i = 0; i < m; ++i) {
                int x;
                cin >> x;
                a.push_back(x);
            }
            mtx.push_back(a);
        }
        out(mtx);
    }
    return 0;
}
