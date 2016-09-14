## 学习算法竞赛 训练指南。并记录一些常有算法数据结构模版
### 大连赛区网络选拔http://acm.split.hdu.edu.cn/search.php?field=problem&key=2016+ACM%2FICPC+Asia+Regional+Dalian+Online&source=1&searchmode=source

1. 1006 贪心，分数最高的赢分数低的，注意每处理一个人就要sort一下
2. 1009 数组双向链表，数据结构实现
3. 1010 splay树，查找树中小于某个数的数字个数。支持merge，split，findMin，findMax

## 第一章 基础
1. la3902 极其类似http://agc004.contest.atcoder.jp/tasks/agc004_d 日本的一道题，但是不会做。。按深度贪心，选定点标记。代码处理的很巧妙
2. uva11300 代数变幻，思路极其巧妙，最后回到求一个数到各数字绝对值和最小
3. uva11464 一个类似dp的暴力枚举，思路比较好
4. uva11825 子集枚举dp
 
### 有用的方法
1. 最小值最大用二分答案
2. 把无根树变成有根树有助于解题
3. meet in the middle: a +(^) b == 0, 不必枚举a, b只需要把一个放hash中
4. dp优化
    1. 树形dp: 例30 uva10859
    2. 四边形优化(dp 按长度从小到大，dp[i][j]的决策点在dp[i+1][j]和dp[i][j+1]之间): 问题11，最优排序二叉树
    3. 单调队列优化(决策为一个活动窗口，对于滑动窗口问题首先想到单调队列): 例题31 la3983
    4. 斜率优化

### 算法本身可能并没有那么重要，重要的是问题转化的过程！！

## 第二章 数学基础
1. 同色三角形 \frac{1}{2}\sum_{i=1}^{n}a_i(n-i-a_i)
