#!/usr/bin/env python3

from io import StringIO
with open("test", "r") as f:
    for line in f:
        print(line.strip())

f = StringIO()
f.write("Hello\n")
f.write("hehe\n")
f.write("world\n")
print(f.getvalue())

f = StringIO("hehe\nnime\n")
for line in f:
    print(line.strip())
