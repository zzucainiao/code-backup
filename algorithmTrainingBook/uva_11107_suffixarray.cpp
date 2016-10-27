#include <bits/stdc++.h>
#define MAXN 101100
using namespace std;

char s[MAXN];
int sa[MAXN], t[MAXN], t2[MAXN], c[MAXN];
//此处n为实际长度＋1——包含字符串尾部添加的0  每个字符的值必须在0~m-1
void build_sa(int n, int m) {
    int i, *x = t, *y = t2;
    for(i = 0; i < m; ++i) c[i] = 0;
    for(i = 0; i < n; ++i) c[ x[i] = s[i] ]++;
    for(i = 1; i < m; ++i) c[i] += c[i-1];
    for(i = n-1; i>=0; --i) sa[ --c[x[i]] ] = i;
    for(int k = 1; k <= n; k<<=1) {
        int p = 0;
        for(i = n-k; i < n; ++i) y[p++] = i;
        for(i = 0; i < n; ++i) if(sa[i] >= k) y[p++] = sa[i]-k;

        for(i = 0; i < m; ++i) c[i] = 0;
        for(i = 0; i < n; ++i) c[ x[y[i]] ]++;
        for(i = 0; i < m; ++i) c[i] += c[i-1];
        for(i = n-1; i>=0; --i) sa[ --c[ x[ y[i] ] ] ] = y[i];
        swap(x, y);
        p = 1; x[ sa[0] ] = 0;
        for(i = 1; i < n; ++i)
            x[ sa[i] ] = y[sa[i-1]]==y[sa[i]] && y[sa[i-1]+k]==y[sa[i]+k] ? p-1 : p++;
        if(p >= n) break;
        m = p;
    }
}
//此处n为实际长度 heigth的合法范围时1-n，其中0是结尾加入的字符
int rrank[MAXN], height[MAXN];
void getHeight(int n) {
    int i, j, k = 0;
    for(i = 1; i <= n; ++i) rrank[sa[i]] = i;
    for(i = 0; i < n; ++i) {
        if(k) k--;
        j = sa[ rrank[i]-1 ];
        while(s[i+k] == s[j+k]) ++k;
        height[rrank[i]] = k;
    }
}
/*
 * n = strlen(s);
 * s[n] = 0;
 * build_sa(n+1, 'z'+1); // lowcase
 * getHeight(n)
 * 得到的结果处理时字符串的长度为n+1!!!
 * 刘汝佳的模版计算height这里有错！！！！
 */


int nn, label[MAXN], num[MAXN], n, endd[110];
vector<int> pos;
bool ok(int l, int re) {
    int vi[110], sum = 0, mx = 0;
    memset(vi, 0, sizeof(vi));
    height[n+1] = -1;
    for(int i = 1; i < n+2; ++i) {
        if(height[i] < l) {
            memset(vi, 0, sizeof(vi));
            if(re != -1 && sum > nn/2) {
                pos.push_back(sa[i-1]);
            }
            mx = max(mx, sum);
            sum = 0;
        } else {
            if(vi[ label[i-1] ] == 0 && sa[i-1]+l<=endd[ label[i-1] ]) {
                vi[ label[i-1] ] = 1;
                ++sum;
            }
            if(vi[ label[i] ] == 0 && sa[i]+l<=endd[ label[i] ]) {
                vi[ label[i] ] = 1;
                ++sum;
            }
        }
    } 
    //cout << l << " " << mx << endl;
    return mx > nn / 2;
}
char a[1010];
int main () {
    bool first = true;
    while(scanf("%d", &nn) != EOF) {
        if(nn == 0) break;
        memset(s, 0, sizeof(s));
        int r = 0, l = 0, j = 0;
        for(int i = 0; i < nn; ++i) {
            scanf("%s", a); 
            endd[i] = strlen(a);
            for(int k = 0; k < endd[i]; ++k) {
                num[j++] = i;
            }
            r = max(r, endd[i]);
            strcat(s, a);
        }
        num[j++] = nn;
        for(int i = 1; i < nn; ++i) {
            endd[i] += endd[i-1];
        }
        if(first) first = false;
        else printf("\n");
        if(nn == 1) {
            printf("%s\n", a);
            continue;
        }
        n = strlen(s); s[n] = 0;
        build_sa(n+1, 'z'+1);
        getHeight(n); 
        for(int i = 0; i <= n; ++i) {
            label[i] = num[ sa[i] ];
        }
        ++r;
        while(l < r) {
            int mid = (l+r) >> 1; 
            if(ok(mid, -1)) {
                l = mid+1;
            } else {
                r = mid;
            }
        }
        --l;
        if(l == 0) {
            printf("?\n");
            continue;
        }
        pos.clear();
        ok(l, 0);
        for(int i = 0; i < pos.size(); ++i) {
            for(int j = 0; j < l; ++j) {
                putchar(s[ pos[i]+j ]);
            }
            puts("");
        }
    }
    return 0;
}
