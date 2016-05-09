#include <iostream>
#include <regex>
using namespace std;

int main(int argc, char* argv[]) {
    string pattern("([^c]ei)");
    pattern = "[[:alpha:]]*" + pattern + "[[:alpha:]]*";
    string file = "you are my freiNd, theif";
    regex r(pattern, regex::icase);
    for(sregex_iterator it(file.begin(), file.end(), r), end_it; it != end_it; ++it) {
        cout << it->str() << endl;
        cout << it->size() << endl;
        cout << it->prefix() << endl;
        cout << it->suffix() << endl;
        cout << it->length(1) << endl;
        cout << it->str(1) << endl;
        if((*it)[0].matched) {
            for(auto jt = (*it)[0].first; jt != (*it)[0].second; ++jt) {
                cout << "[" << *jt << "]" << endl;
            }
        }
    }

    string phone = "(\\()?(\\d{3})(\\))?([-. ])?(\\d{3})([-. ])?(\\d{4})";
    regex p(phone);
    string fmt = "$2.$5.$7";
    string s = "";
    s = s + "morgan (201) 555-2365 123-345-1234\n" + 
                 "drew (123)123.1234\n" + 
                 "lee (789) 999-0987 1234567890 900.000.0000";
    cout << regex_replace(s, p, fmt) << endl;

    cout << s << endl;
    return 0;
}
