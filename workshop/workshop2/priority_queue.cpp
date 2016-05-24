#include <algorithm>
#include <queue>
#include <list>
#include <iostream>
#include <stack>

using namespace std;

int main (){
    stack<int, vector<int> > S;
    stack<int, list<int> > S2;
    priority_queue<int, vector<int>, greater<int> > Q;
    for(int i = 0; i < 10; ++i){
        Q.push(i);
    }
    while(!Q.empty()) {
        cout << Q.top() << endl;
        Q.pop();
    }
    return 0;
}
