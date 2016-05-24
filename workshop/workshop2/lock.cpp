#include <iostream>

#include <boost/thread/thread.hpp>
#include <boost/thread/mutex.hpp>
#include <boost/thread/recursive_mutex.hpp>
#include <boost/thread/locks.hpp>
#include <boost/thread/lockable_concepts.hpp>
#include <boost/thread/lockable_adapter.hpp>

class BankAccount {
    int _balance;
    boost::mutex _mtx;
public:
    BankAccount(int init = 0): _balance(init){
    }
    void deposit(int amount) {
        boost::lock_guard<boost::mutex> guard(_mtx);
        _balance += amount;
    }
    void withDraw(int amount) {
        boost::lock_guard<boost::mutex> guard(_mtx);
        _balance += amount;
    }
    int getBalance() {
        boost::lock_guard<boost::mutex> guard(_mtx);
        return _balance;
    }
    void lock() {
        _mtx.lock();
    }
    void unlock() {
        _mtx.unlock();
    }
};

class A : public boost::basic_lockable_adapter<boost::mutex> {
public:
    int _a;
    A(int a = 10): _a(a){
    }
    void show() {
        std::cout << _a << std::endl;
    }
};

class B : public boost::basic_lockable_adapter<boost::recursive_mutex> { //可重入 即：可同一线程多次锁一个信号量
public:
    int _a;
    B(int a = 10): _a(a){
    }
    void show() {
        std::cout << _a << std::endl;
    }
};

class C : public boost::timed_lockable_adapter<boost::mutex> {
public:
    int _a;
    C(int a = 10): _a(a){
    }
    void show() {
        std::cout << _a << std::endl;
    }
};

void ATMWithDraw(BankAccount& account, int amount) {
//    boost::recursive_mutex;
    account.lock();
    account.withDraw(amount);
    account.withDraw(2);
    account.unlock();
}
int main () {
    BankAccount wangbing;
    wangbing.deposit(100);
    std::cout << wangbing.getBalance() << std::endl;
    ATMWithDraw(wangbing, 10);

    A lockable_a;
    lockable_a.lock();
    lockable_a.show();
    lockable_a.unlock();

   // B b;
  //  boost::lock_guard<B> recusive_lock(b); //构造函数自动锁b
    //C c;
    //c.try_lock_until( boost::chrono::time_point);
    std::cout << "wangbing" << std::endl;
}
