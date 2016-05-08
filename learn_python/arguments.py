#!/usr/bin/env python3

def f1(a, b, c=0, *args, **kw):
    print('a =', a, 'b =', b, 'c =', c, 'args =', args, 'kw =', kw)

def f2(a, b, c=0, *, d, **kw):
    print('a =', a, 'b =', b, 'c =', c, 'd =', d, 'kw =', kw)

f1(1, 2)
f1(1, 2, c = 3)
f1(1, 2, 3, 'a', 'b')
f1(1, 2, 3, 'a', 'b', x=99)
f2(1, 2, d=99, ext=None)

args = (1, 2, 3, 4)
kw = {'d': 99, 'x': '#'}
f1(*args, **kw)
args = (1, 2, 3)
kw = {'x': 88, 'd': '#'}
f2(*args, **kw)
'''
a = 1 b = 2 c = 0 args = () kw = {}
a = 1 b = 2 c = 3 args = () kw = {}
a = 1 b = 2 c = 3 args = ('a', 'b') kw = {}
a = 1 b = 2 c = 3 args = ('a', 'b') kw = {'x': 99}
a = 1 b = 2 c = 0 d = 99 kw = {'ext': None}
a = 1 b = 2 c = 3 args = (4,) kw = {'d': 99, 'x': '#'}
a = 1 b = 2 c = 3 d = 88 kw = {'x': '#'}
'''
