#include <iostream>
#include <tuple>
#include <vector>
#include <algorithm>

using namespace std;

using reType = tuple<size_t, vector<int>::const_iterator,
                          vector<int>::const_iterator>;
reType find(vector<int>& v, int x) {
    sort(v.begin(), v.end());
    vector<int>::const_iterator beg = lower_bound(v.cbegin(), v.cend(), x);
    vector<int>::const_iterator end = upper_bound(v.cbegin(), v.cend(), x);
    return {end-beg, beg, end}; 
}
int main(int argc, char* argv[]) {
    tuple<string, int, int> val("wangbing", 10, 100);

    get<1>(val) = 110;
    cout << get<1>(val) << endl;

    vector<int> v = {1, 9, 2, 8, 3, 7, 4, 6, 5, 8};
    reType re = find(v, 8);
    cout << get<0>(re) << endl;
    for_each(get<1>(re), get<2>(re), [](int x){cout << x << endl;});
    cout << "Hello world!" << endl;

    return 0;
}
