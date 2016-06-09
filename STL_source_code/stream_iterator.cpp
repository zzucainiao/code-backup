#include <iostream>
#include <iterator>
#include <algorithm>

using namespace std;

void show(const vector<int>& a) {
    for(const auto &x : a) {
        cout << x << " ";
    }
    cout << endl;
}
int main () {
    vector<int> a(10, 0);
    istream_iterator<int> inite(cin), eos;
    copy(inite, eos, inserter(a, a.begin()));

    ostream_iterator<int> out(cout, " ");
    copy(a.begin(), a.end(), out);

    cout << endl;

    show(a);
    return 0;
}
