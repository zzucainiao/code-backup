
def loss(y, a, b, x):
    sum = 0
    for i in range(len(y)):
        if y[i] > x:
            sum += a[i] * (y[i] - x)
        else:
            sum += b[i] * (x - y[i])
    return sum

def best_leaf(y, a, b):
    l = min(y)
    r = max(y)
    while r - l > 0.01:
        mid = (l + r) / 2.0
        mid3 = (mid + r) / 2.0
        if loss(y, a, b, mid) <= loss(y, a, b, mid3):
            r = mid3
        else:
            l = mid
    return l

y = [x for x in range(10)]
print(y)
a = [100-x for x in range(10)]
print(a)
b = [x for x in range(10)]
print(b)

mn = 1e10
for i in range(min(y), max(y)+1):
    lo = loss(y, a, b, i)
    if lo < mn:
        re = i
        mn = lo
print(re)
print best_leaf(y, a, b)
