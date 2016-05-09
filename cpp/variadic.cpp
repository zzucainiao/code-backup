#include <iostream>
#include <utility>
#include <string>
#include <vector>
using namespace std;

template<typename T, typename ... Args>
T make(T, Args&& ... rest) {                //模版参数列表，右值引用调用构造函数
    cout << sizeof...(rest) << endl;
    return T(std::forward<Args>(rest) ... ); //按原始类型转发扩展参数，emplace函数的事项方式
}

int main(int argc, char* argv[]) {
    string x;
    string s = make(x, 10, 'c');
    cout << s << endl;
    
    vector<string> v;
    v.emplace_back(10, 'c');
    cout << v[0] << endl;
    cout << "Hello world!" << endl;

    return 0;
}
