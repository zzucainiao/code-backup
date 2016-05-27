#include <iostream>

using namespace std;

int main () {
    char a1[] = "hello world";
    char a2[] = "hello world";
    char *p1 = "hello world";
    char *p2 = "hello world";
    if(a1 == a2)
        cout << "a1 == a2" << endl;
    else
        cout << "a1 != a2" << endl;
    if(p1 == p2)
        cout << "p1 == p2" << endl;
    else
        cout << "p1 != p2" << endl;
    // p1[1] = 'H'; segmentation fault
    //cout << p1 << endl << p2 << endl;    
    a1[1] = 'H';
    cout << a1 << endl << a2 << endl;    
    return 0;
}
/*
a1 != a2
p1 == p2
hHllo world
hello world
*/
