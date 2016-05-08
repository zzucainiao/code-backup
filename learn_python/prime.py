#!/usr/bin/env python3

import string

def nums():
    n = 1
    while True:
        n += 1
        yield n

def mul(n):
    return lambda x: x % n > 0
def prime():
    it = nums()
    while True:
        n = next(it)
        filter(mul(n), it)
        yield n
def judge(n):
    return str(n) != (str(n)[::-1])

def is_odd(n):
    return n % 2 == 1
for i in filter(is_odd, nums()):
    print(i)
for i in filter(judge, nums()):
    print(i)

for i in prime():
    print(i)
