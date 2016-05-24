#include <iostream>
#include <algorithm>
#include <set>
#include <vector>

using namespace std;
/*
void f(const A& input, B& output) {
}

f(a, b);
*/
struct functor{
    vector< int > v;
    void operator()(const int x) {
        if(x > 10) {
            v.push_back(x);
        }
    }
    void output() const {
        for(vector<int>::const_iterator it = v.begin(); it != v.end(); ++it) {
            cout << *it << endl;
        }
    }
};

//for_each(begin, end, fun);
int main (){
    functor f;
    set<int> s = {1, 2, 30, 20};
    vector<int> v;
    for_each(s.begin(), s.end(), [&v](const int x){ if(x > 10) v.push_back(x); });

    for_each(v.begin(), v.end(), [](const int x){ cout << x << endl;});

    f.output();

    //ostream cout;
    //std::cout << "wangbing" << endl;
}


