#!/usr/bin/env python3

def lazy_sum(L):
    def sum():
        re = 0
        for i in L:
            re += i
        return re
    return sum

def count():
    fs = []
    for i in range(1, 4):
        def f():
            return i * i
        fs.append(f)
    return fs
for i in count():
    print(i())
print(lazy_sum([1, 2, 3, 4])())
print(lazy_sum([1, 2, 3, 4])())
'''
9
9
9 //由于函数没有立即执行 引用局部变量被修改。
    返回函数中不要引用任何可能会变化的量
10
10
'''
