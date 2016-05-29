#include <iostream>
#include <string>
#include <cstdio>

using namespace std;

int main(int argc, char* argv[]) {
    int t, ca  = 1;
    scanf("%d", &t);
    while(t--) {
        string a;
        cin >> a;
        long long re = 1;
        for(int i = 0; i < a.length(); ++i) {
            string tmp;
            tmp += a[i];
            if(i-1 >= 0)
                tmp += a[i-1];
            if(i+1 < a.length())
                tmp += a[i+1];
            sort(tmp.begin(), tmp.end());
            int size = unique(tmp.begin(), tmp.end()) - tmp.begin();
            re *= size;
            re %= 1000000007;
        }
        printf("Case #%d: %lld\n", ca++, re);
    }
    return 0;
}
