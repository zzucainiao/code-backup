#!/usr/bin/env python3

def triangles():
    L = [1]
    while True:
        R = [1]
        for j in range(1, len(L)):
            R.append( L[j] + L[j-1])
        R.append(1)
        yield R
        L = R
    return "done"
n = 0
for l in triangles():
    print(l)
    n += 1
    if n > 10:
        break
x = triangles()
print(next(x))
print(x)
