#include <iostream>
#include <algorithm>
#include <set>

using namespace std;

class base{
public:
  base(int b = 100): _b(b){
  }
  void test(){
     static int a = 0;
     a++;
     cout << a << endl;
  }  
  void operator()(int a) {
      cout << a << endl;
  }
  bool operator<(const base& a) const {
      return _b < a._b;
  }
  virtual ~base(){
      cout << "base" << endl;
  }

  int _b;
};

class drive: public base{
public:
    drive():base(200) {
    }
    void f(){
        cout << "wangbing" << endl;
    }
    virtual ~drive(){
        cout << "drive" << endl;
    }
};

class C: public drive {
};

struct cmp{
   bool operator()(const base& a, const base& b) const {
        return a._b < b._b;
   }
};
struct fun{
   bool operator()(const base& a) const {
        cout << a._b << endl;
   }
};

int main (){
    /*
    base b;
    b.test();
    b.test();
    base a;
    a.test();
    a(10);

    set<base, cmp> s;
    //set<base> s;
    s.insert(a);
    s.insert(b);
    for_each(s.begin(), s.end(), fun());
*/

    base *c, *e;
    drive *d;
    c = new base();
    d = new drive();
    e = new drive();
    //e->f();
    drive* g = dynamic_cast< drive* >(e);
    g->f();
    delete c;
    delete d;
    delete e; 
}


