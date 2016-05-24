#include <iostream>

#include <boost/thread/thread.hpp>
#include <boost/thread/locks.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/bind.hpp>

using namespace std;

boost::mutex mtx;
void show(int i) {
    boost::unique_lock< boost::mutex > lock(mtx);//构造函数锁，析构函数解锁 
    //mtx.lock();
    cout << "wangbing" << i << endl;
    //mtx.unlock();
}

int main() {
    int thread_num = 8;
    boost::thread_group group;
    for(int i = 0; i < thread_num; ++i) {
        group.create_thread( boost::bind(show, i));
    }
    cout << "xxxxxx" << endl;
    group.join_all();
    return 0;
}

