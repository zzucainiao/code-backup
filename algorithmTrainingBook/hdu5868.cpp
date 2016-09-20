#include <iostream>
#include <cmath>
#include <cstring>
#define N 1000000
#define LL long long

using namespace std;

const int maxn = 10000010;
const int maxp = 700000;
int vis[maxn], prime[maxp];
void sieve(int n) {
    int m = (int)sqrt(n + 0.5);
    memset(vis, 0, sizeof(vis));
    for(int i = 2; i <= m; ++i) if(!vis[i])
        for(int j = i*i; j <= n; ++j) vis[j] = 1;
}

int gen_primes(int n) {
    sieve(n);
    int c = 0;
    for(int i = 2; i <= n; ++i) if(!vis[i])
        prime[c++] = i;
    return c;
}

LL gcd(LL a, LL b) {
    return b == 0 ? a : gcd(b, a%b);
}

void gcd(LL a, LL b, LL & d, LL& x, LL& y) {
    if(!b) {d = a; x = 1; y = 0;}
    else {gcd(b, a%b, d, y, x); y -= x*(a/b);}
}

LL mul_mod(LL a, LL b, LL n) {
    LL re = 0;
    while(b) {
        if(b&1) { re += a, re %= n;}
        a += a;
        a %= n;
        b >>= 1;
    }
    return re;
}

LL pow_mod(LL a, LL p, LL n) {
    LL re = 1;
    while(p) {
        if(p&1)  {re *= a; re %= n;}
        a *= a;
        a %= n;
        p >>= 1;
    }
    return re;
}

LL euler_phi(LL n) {
    int m = (int)sqrt(n + 0.5);
    LL ans = n;
    for(int i = 2; i <= m; ++i) if(n % i == 0) {
        ans = ans / i * (i-1);
        while(n % i == 0) n /= i;
    }
    if(n > 1) ans = ans / n * (n-1);
    return ans;
}

int phi[maxn];
void phi_table(int n) {
    for(int i = 2; i <= n; ++i) phi[i] = 0;
    phi[1] = 1;
    for(int i = 2; i = n; ++i) if(!phi[i]) {
        for(int j = i; j <= n; j+=i) {
            if(!phi[j]) phi[j] = j;
            phi[j] = phi[j] / i * (i-1);
        }
    }
}

LL inv(LL a, LL n) {
    LL d, x, y;
    gcd(a, n, d, x, y);
    return d == 1 ? (x+n)%n : -1;
}

//n x=a[i](mod m[i]) (0<=i<n)
LL china(int n, int *a, int *m) {
    LL M = 1, d, y, x = 0;
    for(int i = 0; i < n; ++i) M *= m[i];
    for(int i = 0; i < n; ++i) {
        LL w = M / m[i];
        gcd(m[i], w, d, d, y);
        x = (x + y*w*a[i]) % M;
    }
    return (x+M) % M;
}

const int size = 2;
const LL MOD = 1e9+7;
struct Matrix {
    LL p[size][size];
    Matrix() {
        memset(p, 0, sizeof(p));
    }
    static Matrix ones() {
        Matrix re;
        for(int i = 0; i < size; ++i) {
            re.p[i][i] = 1;
        }
        return re;
    }
    Matrix operator*(const Matrix &x) {
        Matrix re;
        for(int i = 0; i < size; ++i)
        for(int j = 0; j < size; ++j) {
            for(int k = 0; k < size; ++k) {
                re.p[i][j] += p[i][k] * x.p[k][j] % MOD; 
                re.p[i][j] %= MOD;
            }
        }
        return re;
    }
};

Matrix pow_mod(Matrix a, int p) {
    Matrix re = Matrix::ones(); 
    while(p) {
        if(p&1) {re = re * a;}
        a = a * a;
        p >>= 1;
    }
    return re;
}

LL n;
int divisor[N];
int get_divisor(LL n) {
    int re = 0;
    for(LL i = 1; i * i <= n; ++i) {
        if(n % i == 0) {
            divisor[re++] = i;
            if(i * i != n) {
                divisor[re++] = n / i;
            }
        }
    }
    return re;
}

LL f(int n) {
    if(n == 1) return 1;
    if(n == 2) return 3;
    Matrix a;
    a.p[0][0] = 0;
    a.p[0][1] = 1;
    a.p[1][1] = 1;
    a.p[1][0] = 1;
    Matrix ans = pow_mod(a, n-1);
    return (1 * ans.p[0][0] % MOD + 3 * ans.p[1][0] % MOD) % MOD;
} 
int main () {
    while(cin >> n) {
        if(n == 1) {
            cout << 2 << endl;
            continue;
        }
        int num = get_divisor(n);
        LL ans = 0;
        for(int i = 0; i < num; ++i) {
            ans += f(divisor[i]) * euler_phi(n / divisor[i]) % MOD; 
            ans %= MOD;
        } 
        ans *= inv(n, MOD); 
        ans %= MOD;
        cout << ans << endl;
    }
    return 0;
}
