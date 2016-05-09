#include <iostream>
#include <vector>
#include <algorithm>
#include <functional>

#include <boost/bind.hpp>
#include <boost/foreach.hpp>
using namespace std;

bool lessthan4(int x){
    return x < 4;
}

class A{
public:
    A(): a(0){
        s.clear();
    }
    void show() const{
        cout << a << endl;
    }
    void addAndShow(){
        cout << ++a << endl;
    }
    void add(int b) {
        a += b;
        cout << a << endl;
    }
    void showTwo(int b) const{
        cout << a << " " << b << endl;
    }
    void store(const int x){
        s.push_back(x);
    }
    void showS(){
        for(vector<int>::iterator i=s.begin(); i!=s.end(); ++i)
            cout << (*i) << " ";
        cout << endl;
    }
private:
    vector<int> s;
    int a;
};

int main(int argc, char* argv[])
{
    vector<int> v;
    for(int i=0; i<10; ++i)
        v.push_back(i);
    cout << count_if(v.begin(), v.end(), bind1st(less<int>(), 4)) << endl;
    cout << count_if(v.begin(), v.end(), ptr_fun<int , bool>(lessthan4)) << endl;

    A a;
    mem_fun(&A::show)(&a);
    mem_fun_ref(&A::show)(a);

    mem_fun(&A::addAndShow)(&a);
    mem_fun_ref(&A::addAndShow)(a);

    mem_fun(&A::add)(&a, 10);
    mem_fun_ref(&A::add)(a, 10);

    mem_fun(&A::showTwo)(&a, 10);
    mem_fun_ref(&A::showTwo)(a, 10);

    for_each(v.begin(), v.end(), boost::bind(&A::store, &a, _1));
    a.showS();

    BOOST_FOREACH(const int& x, v){
        cout << x << endl;
    }
    cout << "Hello world!" << endl;

    return 0;
}
