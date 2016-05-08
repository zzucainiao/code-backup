#include <cstdio>

int main() {
    int lval = 0xFEDCBA98;
    printf("%x\n", lval);
    lval >>= 32; // shfit 23 % sizeof(int) bit. so no change!!!! 
    int aval = 0xFEDCBA98; // compute shift VS logic shift
    aval >>= 36;
    unsigned uval = 0xFEDCBA98u;
    uval >>= 40;
    printf("%x\n%x\n%x\n", lval, aval, uval);
}
/*
fedcba98
fedcba98
ffedcba9
fedcba
*/
