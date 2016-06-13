
def squre(n):
    '''
    return squre of n
    >>> squre(2)
    4
    >>> squre(3)
    9
    '''
    return n ** 2

def product(x, y):
    return x * y

def gcdAndPro(x, y):
    if y == 0:
        gcd = x
    else:
        pro, gcd = gcdAndPro(y, x%y)
    return product(x, y), gcd
