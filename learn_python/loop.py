#!/usr/bin/env python3

from function import my_abs
from function import move
from function import enroll
from function import cal
from function import cal2
from function import calc
import math

print(calc(1, 3, 4, 5, 6))
a = [1, 2, 3]
print(calc(*a))
print(cal())
print(cal())
print(cal2())
a = ["haha"]
print(cal2(a))
print(cal2())

enroll("wangbing", "F")
enroll("wangbing", "F", 10)
enroll("wangbing", "F", city = "luoyang")
x, y = move(100, 100, 60, math.pi / 6)
print(x, y)
x, y = move(100, 100, 60)
print(x, y)

print(my_abs(-100))
my_abs("a")
a = [1, 2, 3]
for i in a:
    print(i)

sum = 0
for i in range(0, 101):
    sum += i
print(sum)
