#include <iostream>
#include <algorithm>
#include <numeric>
#include <map>
#include <vector>

#include <boost/bind.hpp>

using namespace std;

struct comp {
    pair<double, double> operator()(const pair<double, double>& init, double x) const {
        return make_pair(init.first + x, init.second + x*x);
    }
};

class A {
public:
    pair<double, double> sum(const pair<double, double>& init, double x) const {
        return make_pair(init.first + x, init.second + x*x);
    }
};

pair<double, double> sum(const pair<double, double>& init, double x, double y, double z) {
    return make_pair(init.first + x + y, init.second + x*x);
}

pair<double, double> sum2(const pair<double, double>& init, double x, double y) {
    return make_pair(init.first + x + y, init.second + y*y);
}

int main () {
    vector<double> test;
    for(int i = 0; i < 100; ++i) {
        test.push_back(i);
    }
    A a;
    double y = 0.0;
    //a.sum(); A::sum(*this)
    //pair<double, double> re = accumulate(test.begin(), test.end(), make_pair(0, 0), comp());
    //pair<double, double> re = accumulate(test.begin(), test.end(), make_pair(0, 0), boost::bind((&A::sum), &a, _1, _2));
    pair<double, double> re = accumulate(test.begin(), test.end(), make_pair(0, 0), boost::bind(sum, _1, _2, y, y));
    //pair<double, double> re2 = boost::bind(sum, _1, _2, y, y)(make_pair(10, 10), 10);
    pair<double, double> re2 = boost::bind(sum2, _1, y, _2)(make_pair(10, 10), 10);
    
   // operator+(_1, _2);
    cout << re2.first << " " << re2.second << endl;

    cout << re.first << " " << re.second << endl;
    return 0;
}

