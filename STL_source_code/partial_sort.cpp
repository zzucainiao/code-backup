#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

void show(const vector<int>& v) {
    for(int i = 0; i < v.size(); ++i) {
        cout << v[i] << " ";
    }
    cout << endl;
}
int main () {
    vector<int> v;
    for(int i = 0; i < 10; ++i) {
        v.push_back(10-i);
    }
    partial_sort(v.begin(), v.begin()+3, v.end());
    show(v);
    nth_element(v.begin(), v.begin()+5, v.end());
    show(v);
    return 0;
}
/*
1 2 3 10 9 8 7 6 5 4 
4 2 3 1 5 6 7 8 9 10 
*/
