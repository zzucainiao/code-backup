#!/usr/bin/env python3

from collections import Iterable

l = ["wangBing", "Nimie"]
print([x.lower() for x in l if isinstance(x, str)])

print(isinstance('abc', Iterable))
print(isinstance(123, Iterable))

for ch in "ABCD":
    print(ch)

d = {"a": 1, "b": 2, "c": 3}
for k in d:
    print(k)
for v in d.values():
    print(v)
for k, v in d.items():
    print(k, v);
