#include <iostream>
#include <functional>

using namespace std;

int main () {
    plus<int> plusobj;
    minus<int> minusobj;
    multiplies<int> multipliesobj;
    divides<int> dividesobj;
    modulus<int> modulusobj;
    negate<int> negateobj;

    cout << plusobj(3, 5) << endl;
    cout << minusobj(3, 5) << endl;
    cout << multipliesobj(3, 5) << endl;
    cout << dividesobj(3, 5) << endl;
    cout << modulusobj(3, 5) << endl;
    cout << negateobj(3) << endl;

}
/*
8
-2
15
0
3
-3
*/
