#include <cstdio>
#include <cstdlib>
#include <iostream>

using namespace std;

void repeace(char *p, int length) {
    if(p == NULL) return ;
    int len = 0;
    int space = 0;
    char *q = p;
    while(*q) {
        if(*q == ' ') ++space;
        ++q;
        ++len;
    }
    
    if(length < len + space*2 + 1) {
        cerr << "no enough space" << endl;
        return ;
    }
    int last = len + space*2;
    --len;
    p[last--] = '\0';
    while(len >= 0) {
        if(p[len] == ' ') {
            p[last--] = '0';
            p[last--] = '2';
            p[last--] = '%';
        } else {
            p[last--] = p[len];
        }
        --len;
    }
}
int main () {
    char p[20];
    while(gets(p)) {
        cout << p << endl;
        repeace(p, 20);
        cout << p << endl;
        repeace(NULL, 10);
    }
}
