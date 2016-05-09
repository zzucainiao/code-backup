#include <iostream>
#include <memory>
using namespace std;

int main(int argc, char* argv[]) {
    allocator<string> alloc;
    int n = 10;
    string* p = alloc.allocate(n);
    string* q = p;
    while(q != p+n) {
        alloc.construct(q++, 10, 'w');
        cout << *(q-1) << endl;
    }
    while(q != p) {
        alloc.destroy(--q);
    }
    alloc.deallocate(p, n);
    cout << "Hello world!" << endl;

    return 0;
}
