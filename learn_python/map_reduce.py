#!/usr/bin/env python3

from functools import reduce
def int(s):
    def char2num(c):
        return {'0':0, '1':1, '2':2, '3':3, '4':4, '5':5, '6':6, '7':7, '8':8, '9':9}[c]
    def cal(x, y):
        return x*10 + y
    return reduce(cal, map(char2num, s))

def formatNames(name):
    def formatName(n):
        return n[:1].upper() + n[1:].lower()
    return map(formatName, name)

names = ["WANGB", "iTREa"]
L = formatNames(names)
print(list(L))
s = input("input number:")
print(int(s))
