#!/usr/bin/env python3

class Student(object):
    def __init__(self, name, score):
        self.name = name
        self.score = score
    def print_score(self):
        print("%s: %s" % (self.name, self.score))

class Teacher(object):
    def __init__(self, name, title):
        self.__name = name
        self.__title = title
    def print_t(self):
        print("%s: %s" % (self.__name, self.__title))

class Animal(object):
    def run(self):
        print("Animal is running")
class Dog(Animal):
    def run(self):
        print("dog is running")
class Cat(Animal):
    pass
class ICanRun(object):
    def __len__(self):
        return 10
    def run(self):
        print("i can run...hehehehe")

def run(animal):
    animal.run()

if __name__ == "__main__":

    print("wangbing".__len__())
    print(ICanRun().__len__())
    wangbing = Student("wangbing", 100)
    wangbing.print_score()
    t = Teacher("heh", "Pro")
    t.print_t()
    print(t._Teacher__name)
    print(type(wangbing))
    print(type(Dog()))

    run(Animal())
    run(Dog())
    run(Cat())
    run(ICanRun())

    i = ICanRun()
    i.name = "hehe"
    print(i.name)
    print( hasattr(wangbing, "name") )
    print( getattr(wangbing, "name") )
    print( setattr(wangbing, "name", "nimie") )
    print( getattr(wangbing, "name") )
