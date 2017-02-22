#define pi acos(-1.0) // PI值
struct complex{
    double r,i;
    complex(double real=0.0,double image=0.0){
        r=real; i=image;
    }
    以下为三种虚数运算的定义
        complex operator + (const complex o){
            return complex(r+o.r,i+o.i);
        }
    complex operator - (const complex o){
        return complex(r-o.r,i-o.i);
    }
    complex operator * (const complex o){
        return complex(r*o.r-i*o.i,r*o.i+i*o.r);
    }
};
void brc(complex *y,int l) { // 二进制平摊反转置换 O(logn)
    int i,j,k;
    for(i=1,j=l/2;i<l-1;i++)
    {
        if(i<j) swap(y[i],y[j]); // 交换互为下标反转的元素
        // i<j保证只交换一次
        k=l/2;
        while(j>=k) // 由最高位检索，遇1变0，遇0变1，跳出
        {
            j-=k;
            k/=2;
        }
        if(j<k) j+=k;
    }
}
void fft(complex *y,int l,double on) // FFT O(nlogn)
    // 其中on==1时为DFT，on==-1为IDFT
{
    register int h,i,j,k;
    complex u,t; 
    brc(y,l); // 调用反转置换
    for(h=2;h<=l;h<<=1) // 控制层数
    {
        // 初始化单位复根
        complex wn(cos(on*2*pi/h),sin(on*2*pi/h));
        for(j=0;j<l;j+=h) // 控制起始下标
        {
            complex w(1,0); // 初始化螺旋因子
            for(k=j;k<j+h/2;k++) // 配对
            {
                u=y[k];
                t=w*y[k+h/2];
                y[k]=u+t;
                y[k+h/2]=u-t;
                w=w*wn; // 更新螺旋因子
            } // 据说上面的操作叫蝴蝶操作…
        }
    }
    if(on==-1)  for(i=0;i<l;i++)    y[i].r/=l; // IDFT
}
class Solution {
    public:
        int maxRotateFunction(vector<int>& A) {
            if(A.size() == 0) return 0;
            int n = A.size();
            vector<int> B(n);
            for(int i = 0; i < n; ++i) {
                B[i] = i;
            }

            int l = 1, i;
            while(l < n*2)  l<<=1; // 将次数界变成2^n
            // 配合二分与反转置换
            int sum[l];
            complex x1[l], x2[l];
            for(i=0; i<n; i++) // 倒置存入
            {
                x1[i].r=A[i];
                x1[i].i=0.0;
            }
            for(;i<l; i++)  x1[i].r=x1[i].i=0.0;
            // 将多余次数界初始化为0
            for(i=0; i<n; i++)
            {
                x2[i].r=B[n-i-1];
                x2[i].i=0.0;
            }
            for(; i<l; i++) x2[i].r=x2[i].i=0.0;
            fft(x1,l,1); // DFT(a)
            fft(x2,l,1); // DFT(b)
            for(i=0;i<l;i++)    x1[i]=x1[i]*x2[i]; // 点乘结果存入a
            fft(x1,l,-1); // IDFT(a*b)
            for(i = 0; i < l; ++i) sum[i] = x1[i].r + 0.5;
            int re = sum[n-1];
            int pos = 0;
            for(i = 0; i < n-2; ++i) {
                if(re < sum[i] + sum[i+n]) {
                    re = sum[i] + sum[i+n];
                    pos = n-i-1;
                }
            }
            re = 0;
            for(int i = 0; i < n; ++i) {
                re += A[i] * B[(i+pos)%n];
            }
            return re;
        }
};
