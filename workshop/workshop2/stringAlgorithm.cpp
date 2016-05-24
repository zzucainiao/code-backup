#include <iostream>
#include <algorithm>
#include <vector>
#include <string>

#include <boost/lexical_cast.hpp>
#include <boost/algorithm/string.hpp>
#include <boost/algorithm/string/regex.hpp>
#include <boost/foreach.hpp>


int main(int argc, char** argv) {

    std::cout << "---------split---------" << std::endl;
    std::string line(" wangbing 1, 2/3 4 adf wangding");
    std::string spChar("/ ");
    std::vector<std::string> splitResult;
    boost::split(splitResult, line, boost::is_any_of(spChar));
    BOOST_FOREACH(const std::string& s, splitResult) {
        std::cout << s << std::endl;
    }
    
    std::cout << "---------case_conv---------" << std::endl;
    std::string a("wangBing");
    boost::to_upper(a);
    std::cout << a << std::endl;
    std::string b = boost::to_lower_copy(a);
    std::cout << a << " " << b << std::endl;

    std::cout << "---------erase---------" << std::endl;
    a = "wangbing hehe   wangbing   ";
    boost::erase_first(a, "hehe");
    std::cout << a << std::endl;

    std::cout << "---------find---------" << std::endl;
    a = "wangbing hehe   wangbing   b1234_";
    boost::regex rx("b[0-9]+_");
    b = "hehe";
    boost::iterator_range< std::string::iterator> it = boost::find_first(a, b);
    std::cout << (it.end() - it.begin()) << " " << std::string(it.begin(), it.end()) << std::endl;
    it = boost::find_regex(a, rx);
    std::cout << (it.end() - it.begin()) << " " << std::string(it.begin(), it.end()) << std::endl;
    
    std::cout << "---------predicate---------" << std::endl;
    a = "wangbing hehe   wangbing   b1234_";
    if(boost::starts_with(a, "wangbing")) {
        std::cout << "hehe" << std::endl;
    }

    std::cout << "---------replace---------" << std::endl;
    a = "wangbing hehe   wangbing   b1234_";
    std::string re = boost::replace_first_copy(a, "wangbing", "WANGBING");
    std::cout << re << std::endl << a << std::endl;

    std::cout << "---------trim---------" << std::endl;
    a = "\t hehe   wangbing   b1234_ ";
    std::cout << a << std::endl;
    boost::trim(a);
    std::cout << a << std::endl;

    std::cout << "---------regex---------" << std::endl;
    a = "\t he1he   wang12bing   b1234_ ";
    boost::regex reg("[0-9]{2, 2}");
    splitResult.clear();
    boost::split_regex(splitResult, a, reg);
    std::cout << a << std::endl;
    std::cout << reg << std::endl;
    BOOST_FOREACH(const std::string& s, splitResult) {
        std::cout << s << std::endl;
    }
    
    splitResult.clear();
    boost::find_all_regex(splitResult, a, reg);
    BOOST_FOREACH(const std::string& s, splitResult) {
        std::cout << s << std::endl;
    }

    return 0;
}

/*
-lboost_filesystem \
-lboost_regex \
-lboost_system \
-lboost_thread \
-lboost_iostreams \
*/
/*
---------split---------

wangbing
1,
2
3
4
adf
wangding
---------case_conv---------
WANGBING
WANGBING wangbing
---------erase---------
wangbing    wangbing   
---------find---------
4 hehe
6 b1234_
---------predicate---------
hehe
---------replace---------
WANGBING hehe   wangbing   b1234_
wangbing hehe   wangbing   b1234_
---------trim---------
	 hehe   wangbing   b1234_ 
hehe   wangbing   b1234_
---------regex---------
	 he1he   wang12bing   b1234_ 
[0-9]{2, 2}
	 he1he   wang
bing   b

_ 
12
12
34
*/
