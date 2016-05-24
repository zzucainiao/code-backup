#include <cstring>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <cstring>

using namespace std;

class CMyString {
public:
    CMyString(const char *pData = NULL);
    CMyString(const CMyString& str); //when agrument = CMyString str, recursion call for constructor. complie ERROR!!!
    CMyString& operator=(const CMyString& str);
    ~CMyString(void);
    friend ostream& operator<<(ostream& os, const CMyString& str);
private:
    char* m_pData;
};

CMyString::CMyString(const char *pData) {
    cout << "CMyString(const char *pdata)" << endl;
    m_pData = new char[strlen(pData)+1];
    if(m_pData == NULL) {
        cerr << "running out of memory" << endl;
        exit(0);
    }
    strcpy(m_pData, pData);
}
CMyString::CMyString(const CMyString& str): CMyString(str.m_pData) {
    cout << "CMyString(const CMyString& str)" << endl;
}
CMyString::~CMyString() {
    cout << "~CMtString()" << endl;
    delete[] m_pData;
}
/*
CMyString& CMyString::operator=(const CMyString& str) {
    if(this == &str)
        return *this;
    int len = strlen(str.m_pData);
    delete[] m_pData;
    m_pData = (char *)malloc((len+1) * sizeof(char));
    //exception not safe, if throw exception, orignal object's m_pData already be released
    if(m_pData == NULL) {
        cerr << "running out of memory" << endl;
        exit(0);
    }
    strcpy(m_pData, str.m_pData);
    return *this;
}
*/
CMyString& CMyString::operator=(const CMyString& str) {
    cout << "operator= begin" << endl;
    if(this != &str) {
        CMyString tmpStr(str.m_pData);
        char *tmp = m_pData;
        m_pData = tmpStr.m_pData;
        tmpStr.m_pData = tmp;  
        //swap ptr, distructor of tmpStr release to memory
        //exception safe. if malloc except, the orignal object not change.
    }
    cout << "operator= end" << endl;
    return *this;
}
ostream& operator<<(ostream& os, const CMyString& str) {
    os << str.m_pData;
    return os;
}

int main () {
    char *a = "abcd";
    char b[10] = "aaaaa"; 
    cout << "sizeof pointer=" << sizeof(a) << " sizeof array=" << sizeof(b) << endl;
    
    CMyString x(a);
    cout << x << endl;
    CMyString y(b);
    cout << y << endl;
   
    CMyString z = y;
    cout << z << endl;
    z = x;
    cout << z << endl;
    return 0;
}
