#include <cstdio>
#include <iostream>
#include <string>
#include <cstring>
#include <algorithm>

using namespace std;

class Solution {
    public:
        char dp[500][500];
        bool valid(const string &str, int s, int e, char c) {
            if(e == 0 || c == '.')
                return true;
            for(int i=(s==0?1:s); i<=e; ++i)
                if(str[i-1] != c)
                    return false;
            return true;
        }
        bool isMatch(string s, string p) {
            memset(dp, 0, sizeof(dp));
            int a = s.length();
            int b = p.length();
            dp[0][0] = 1;
            for(int i=0; i<=a; ++i)
            for(int j=1; j<=b; ++j) {
                if(p[j-1] != '*') {
                    if(i==0){
                        dp[i][j] = 0;
                    }else{
                        if(s[i-1] == p[j-1] || p[j-1]=='.')
                            dp[i][j] = dp[i-1][j-1];
                        else
                            dp[i][j] = 0;
                    }
                }else{
                    if(i==0)
                        dp[i][j] = dp[0][j-2];
                    else{
                        dp[i][j] = dp[i][j-2];
                        for(int k=i; k>=1; --k) {
                            if(valid(s, k, i, p[j-2])){
                                dp[i][j] |= dp[k-1][j-2];
                            }
                        }
                    }
                }
                printf("[%d %d %d]\n", i, j, dp[i][j]);
            }
            return dp[a][b]?true:false;
        }
};

int main (){
    string a , b;
    while(cin >> a >> b) {
        Solution S;
        cout << (S.isMatch(a, b) ? "match" : "not match") << "\n";
    }
}




