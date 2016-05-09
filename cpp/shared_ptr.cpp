#include <iostream>
#include <vector>
#include <memory>
using namespace std;

class SharedStrings {
public:
    SharedStrings(): _strsPtr(make_shared< vector<string> >()) {
    }
    void push(const string& s) {
        _strsPtr->push_back(s);
    }
    void show() const {
        for_each(_strsPtr->begin(), _strsPtr->end(), [](const string& x){cout << x << endl;});
    }
private:
    shared_ptr< vector<string> > _strsPtr; //公用元素，省空间
};
int main(int argc, char* argv[]) {

    shared_ptr<string> p(new string("wangbing"));
    cout << *p << endl;

    SharedStrings a;
    {
        SharedStrings b;
        b.push("wangbing");
        b.push("WANGBING");
        a = b;
    }
    SharedStrings c = a;
    c.push("hehe");
    a.show();

    unique_ptr<int> uniq(new int(42));
    unique_ptr<int> un2(uniq.release());
    //un2.release(); 释放指针所有权，没有被接受，运行期报错
    uniq.reset(un2.release());
    cout << *uniq << endl;
    cout << "Hello world!" << endl;

    return 0;
}
