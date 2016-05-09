#include <iostream>

#include <boost/math/distributions/normal.hpp>
using namespace std;

int main(int argc, char* argv[])
{
    boost::math::normal_distribution<> normal(0.0, 1.0); //均值0 标准差1
    cout << boost::math::cdf(normal, 1.96) << endl;
    cout << boost::math::cdf(boost::math::complement(normal, 1.96)) << endl; // 1-cdf
    cout << boost::math::cdf(normal, 1) - boost::math::cdf(normal, -1) << endl;
    cout << boost::math::quantile(normal, 0.975002) << endl; //分位点
    cout << "Hello world!" << endl;

    return 0;
}
/*
output:
0.975002
0.0249979
0.682689
1.96
Hello world!
*/
