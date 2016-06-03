/*没有编译通过。。*/
#include <new>
#include <cstdlib>
#include <vector>
#include <iostream>
#define __THROW_BAD_ALLOC throw bad_alloc
using namespace std;

template<class T, class Alloc>
class simple_alloc {
    public:
        typedef T            value_type;
        typedef T*           pointer;
        typedef const T*     const_pointer;
        typedef T&           reference;
        typedef const T&     const_reference;
        typedef size_t       size_type;
        typedef ptrdiff_t    difference_type;

        static T* allocate(size_t n) {
            return 0==n ? 0 : (T*)Alloc::allocate(n * sizeof(T));
        }
        static T* allocate( void ) {
            return (T*)Alloc::allocate( sizeof(T) );
        }
        static void deallocate(T *p, size_t n) {
            if( 0 != n)
                Alloc::deallocate(p, n * sizeof(T));
        }
        static void deallocate(T *p) {
            Alloc::deallocate(p, sizeof(T));
        }
        template<class U>
        struct rebind {
            typedef simple_alloc<U, Alloc> other;
        };
};
template <int inst>
class __malloc_alloc_template {
    private:
        //out of memory
        static void *__oom_malloc(size_t);
        static void *__oom_realloc(void *, size_t);
        static void (* __malloc_alloc_oom_handler)(); //函数指针 是一个变量！！
    public:
        static void *allocate(size_t n) {
            void *result = malloc(n);
            if(0 == result) result = __oom_malloc(n);
            return result;
        }
        static void deallocate(void *p, size_t /*n*/) {
            free(p);
        }
        static void reallocate(void *p, size_t /*old_size*/, size_t new_size) {
            void *result = reallocate(p, new_size);
            if(0 == result) result = __oom_realloc(p, new_size);
            return result;
        }
        //返回值为 void(*f)() 参数为 void (*f)() 的函数
        //原定义 void (* set_malloc_handler( void (*f)() ) ) ();
        //http://blog.csdn.net/zhiqiangzhan/article/details/4651346 理解声明
        typedef void (*PTR)();
        static PTR set_malloc_handler( void (*f)() ) {
            void (*old)() = __malloc_alloc_oom_handler;
            __malloc_alloc_oom_handler = f;
            return (old);
        }
};

template<int inst>
void (*__malloc_alloc_template<inst>::__malloc_alloc_oom_handler)() = 0;

template<int inst>
void* __malloc_alloc_template<inst>::__oom_realloc(void *p, size_t n) {
    void (*my_malloc_handler)();
    void *result;
    for(;;) {
        my_malloc_handler = __malloc_alloc_oom_handler;
        if(0 == my_malloc_handler) { exit(0); }
        result = realloc(p, n);
        if(result) return (result);
    }
}

template<int inst>
void* __malloc_alloc_template<inst>::__oom_malloc(size_t n) {
    void (*my_malloc_handler)();
    void *result;
    for(;;) {
        my_malloc_handler = __malloc_alloc_oom_handler;
        if(0 == my_malloc_handler) { exit(0); }
        result = malloc(n);
        if(result) return (result);
    }
}

int main() {
    typedef __malloc_alloc_template<0> alloc;
    vector<int, simple_alloc<int, alloc> > v;
    for(int i = 0; i < 10; ++i) {
        v.push_back(i);
    }
    for(int i = 0; i < 10; ++i) {
        cout << v[i] << endl;
    }
    return 0;
}
