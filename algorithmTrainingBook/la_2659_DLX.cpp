#include <vector>
#include <cstdio>
#include <cstring>
#define maxn 1030
#define maxnode 20000
#define maxr 4100

using namespace std;
struct DLX {
    int n, sz;
    int S[maxn]; //各列节点数
    int row[maxnode], col[maxnode]; //节点行列编号
    int L[maxnode], R[maxnode], U[maxnode], D[maxnode]; //十字链表
    int ansd, ans[maxr]; //解
    
    void init(int n) { //列数
        this->n = n;
        for(int i = 0; i <= n; ++i) {
            U[i] = i; D[i] = i; L[i] = i-1; R[i] = i+1;
        }
        R[n] = 0;
        L[0] = n;
        sz = n + 1;
        memset(S, 0, sizeof(S));
    }
    void addRow(int r, vector<int> columns) { //r 行号，columns 行中哪些列有值
        int first = sz;
        for(int i = 0; i < columns.size(); ++i) {
            int c = columns[i];
            L[sz] = sz-1; R[sz] = sz+1; D[sz] = c; U[sz] = U[c];
            D[ U[c] ] = sz; U[c] = sz;
            row[sz] = r; col[sz] = c;
            S[c]++; sz++;
        }
        R[sz-1] = first; L[first] = sz-1;
    }

#define FOR(i, A, s) for(int i = A[s]; i != s; i = A[i])

    void remove(int c) { //删除c列
        L[ R[c] ] = L[c];
        R[ L[c] ] = R[c]; 
        //该列上所有值，对应的行都删掉
        FOR(i, D, c)
            FOR(j, R, i) {U[ D[j] ] = U[j]; D[ U[j] ] = D[j]; --S[ col[j] ];}
    }
    void restore(int c) {
        FOR(i, U, c)
            FOR(j, L, i) {++S[ col[j] ]; U[ D[j] ] = j; D[ U[j] ] = j;}
        L[ R[c] ] = c;
        R[ L[c] ] = c;
    }
    bool dfs(int d) {
        if(R[0] == 0) {
            ansd = d;
            return true;
        }
        int c = R[0];
        FOR(i, R, 0) if(S[i] < S[c]) c = i;

        /*   123456
         * 1  O O O 
         * 2 P  P
         * 3  O  O
         * 4  O   O
         * 5 X   X
         * c = 2, O means to be removed
        */
        remove(c);
        FOR(i, D, c) {
            ans[d] = row[i];
            //选择row[i]来满足c这一列的的要求
            //row[i] = 1, 遍历1行有的元素，删除所有有相同元素的列 P代表被删除的元素
            FOR(j, R, i) remove(col[j]);
            if(dfs(d+1)) return true;
            FOR(j, L, i) restore(col[j]);
        }
        restore(c);
        return false;
    }
    bool solve(vector<int> &v) {
        v.clear();
        if(!dfs(0)) return false;
        for(int i = 0; i < ansd; ++i) v.push_back(ans[i]);
        return true;
    }
};

DLX solver;
const int SLOT = 0;
const int ROW = 1;
const int COL = 2;
const int SUB = 3;
int encode(int a, int b, int c) {
    return a * 256 + b * 16 + c + 1;
}
void decode(int x, int &a, int &b, int &c) {
    --x;
    c = x % 16; x /= 16;
    b = x % 16; x /= 16;
    a = x;
}
char puzzle[16][20];
bool read() {
    for(int i = 0; i < 16; ++i)
        if(scanf("%s", puzzle[i]) != 1) return false;
    return true;
}
int main () {
    int kase = 0;
    while(read()) {
        if(++kase != 1) printf("\n");
        solver.init(1024);
        for(int r = 0; r < 16; ++r)
        for(int c = 0; c < 16; ++c)
        for(int v = 0; v < 16; ++v) {
            if(puzzle[r][c] == '-' || puzzle[r][c] == 'A'+v) {
                vector<int> columns;
                columns.push_back( encode(SLOT, r, c) );
                columns.push_back( encode(ROW, r, v) );
                columns.push_back( encode(COL, c, v) );
                columns.push_back( encode(SUB, (r/4)*4 + c/4, v) );
                solver.addRow(encode(r, c, v), columns);
            }
        }
        vector<int> ans;
        solver.solve(ans);
        for(int i = 0; i < ans.size(); ++i) {
            int r, c, v;
            decode(ans[i], r, c, v);
            puzzle[r][c] = 'A' + v;
        }
        for(int i = 0; i < 16; ++i) {
            printf("%s\n", puzzle[i]);
        }
    }
    return 0;
}
