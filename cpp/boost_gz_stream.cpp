#include <fstream>
#include <iostream>
#include <string>
//#include <boost/iostreams/filtering_streambuf.hpp>
#include <boost/iostreams/filtering_stream.hpp>
//#include <boost/iostreams/copy.hpp>
#include <boost/iostreams/filter/gzip.hpp>

void out(std::istream &is) {
    //boost::iostreams::copy(is, std::cout);
    std::string tmp;
    while(getline(is, tmp)) {
        std::cout << tmp << std::endl;
    }
}
int main(int argc, char* argv[]) 
{
    using namespace std;
 /*   std::istream& in = std::cin;
    if(argc == 2) {
        std::ifstream file(argv[1]);
        in = file;
    } else {*/
        std::ifstream file("test.cpp.gz", ios_base::in | ios_base::binary);
        boost::iostreams::filtering_istream is;
        is.push(boost::iostreams::gzip_decompressor());
        is.push(file);
       // in = is;
    //}
    out(is);
    //boost::iostreams::copy(in, cout);
}
