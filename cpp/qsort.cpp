#include <cstdio>
template<class T>
void qsort(T* a, int l, int r) {
    if(l >= r) return;
//    swap(a[l], a[rand(l, r)]);
    int ll = l, rr = r;
    T tmp = a[l];
    while(l < r) {
        while(l < r && a[r] >= tmp) --r;
        a[l] = a[r];
        while(l < r && a[l] <= tmp) ++l;
        a[r] = a[l];
    }
    a[l] = tmp;
    qsort(a, ll, l-1);
    qsort(a, l+1, rr);
}
int main (){
    int a[10] = {1, 2 ,11 ,11 ,12 ,6, 7 ,8 ,9 ,10};
    qsort(a, 0, 9);
    for(int i=0; i<10; ++i) {
        printf("%d ", a[i]);
    }
}
