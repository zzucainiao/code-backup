#!/usr/bin/env python3

import math
import sys

def my_abs(x):
    if not isinstance(x, (int, float)):
        raise TypeError("bad operand type")
    if x >= 0:
        return x
    return -x

def move(x, y, step, angle = 0):
    nx = x + step * math.cos(angle)
    ny = y - step * math.sin(angle)
    return nx, ny

def enroll(name, gender, age=6, city="Beijing"):
    print("name: %s gender: %s age: %d city: %s"
            % (name, gender, age, city))

def cal(a = 10):
    a += 1
    return a
def cal2(a = []):
    a.append("wangbing")
    return a
def calc(*nums):
    sum = 0
    for i in nums:
       sum += i
    return sum

if __name__ == "__main__":
    print("wangbing")
