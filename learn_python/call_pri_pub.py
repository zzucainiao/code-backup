#!/usr/bin/env python3

from private_public import greeting
from private_public import _private_1 

while True:
    a = input("name:")
    print(greeting(a))
    print(_private_1(a))

