#!/usr/bin/python python3

class Student(object):
    __slots__ = ('name', 'age')

g = Student()
g.name = "wangbing"
print(g.name)
g.hehe = "hehe"
