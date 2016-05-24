#include <iostream>
#include <string>

#include <boost/lexical_cast.hpp>

using namespace std;

int main (){
    string a("1.2e-10");
    double b = boost::lexical_cast< double >(a);
    string s = boost::lexical_cast< string >(b);
    cout << b << endl;
    cout << s << endl;
}

