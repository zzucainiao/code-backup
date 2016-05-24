#include <iostream>

using namespace std;

class base{
public:
  void test(){
     static int a = 0;
     a++;
     cout << a << endl;
  }  
};


int main (){
    base b;
    b.test();
    b.test();
    base a;
    a.test();
}
