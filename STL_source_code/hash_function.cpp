#include <iostream>
#include <unordered_map>
#include <unordered_set>
#include <functional>

using namespace std;

class A {
public:
    A(int x = 0): _x(x) {
    }
    size_t hashs() const {
        return (size_t)_x;
    }
    size_t hash2() const {
        static hash< int > hasher;
        return hasher(_x) % 10;
    } 
    int mod10() const {
        return _x % 10;
    }
    bool operator==(const A& x) const {
        return _x == x._x;
    }
    friend ostream& operator<<(ostream& os, const A& x);
private:
    int _x;
};

ostream& operator<<(ostream& os, const A& x) {
    os << x._x;
    return os;
}

struct hashA {
    size_t operator()(const A& x) const{
        return x.hashs();
    }
};

struct hashA_mod10 {
    size_t operator()(const A& x) const{
        return x.hash2();
    }
};
struct equal_to_mod10 {
    bool operator()(const A& a, const A& b) const {
        return a.mod10() == b.mod10();
    }
};

int main () {
    unordered_set<A, hashA> st;
    for(int i = 0; i < 10; ++i) {
        st.insert(A(i));
    }
    for(unordered_set<A, hashA>::iterator it = st.begin(); it != st.end(); ++it) {
        cout << *it << " ";
    }
    cout << endl;

    unordered_set<A, hashA_mod10, equal_to_mod10> st2;
    for(int i = 0; i < 15; ++i) {
        st2.insert(A(i));
    }
    for(unordered_set<A, hashA>::iterator it = st2.begin(); it != st2.end(); ++it) {
        cout << *it << " ";
    }
    cout << endl;
    return 0;
}
/*
9 8 7 6 5 4 3 2 1 0 
9 8 7 6 5 4 3 2 1 0 
*/
