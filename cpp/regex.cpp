#include <iostream>
#include <regex>
using namespace std;

int main(int argc, char* argv[]) {
    regex r("[[:alnum:]]+\\.(cpp|cxx|cc)$", regex::icase);
    smatch results;
    string file;
//    regex_search("a.cc", results, r); // 编译错误，char* 对应cmatch, string 对应smatch
    cmatch res;
    regex_search("a.cc", res, r);
    while(cin >> file) {
        if(regex_search(file, results, r)) {
            cout << results.str() << endl;
        } else {
            cout << "error file name" << endl;
        }
    }
    return 0;
}
