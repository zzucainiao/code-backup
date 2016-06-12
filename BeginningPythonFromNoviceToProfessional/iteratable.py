
class Fibs(object):
    def __init__(self):
        self.a = 0
        self.b = 1
    def __next__(self):
        self.a, self.b = (self.b, self.a+self.b)
        if self.a > 100:
            raise StopIteration
        return self.a
    def __iter__(self):
        return self
fibs = Fibs()
for i in fibs:
    print(i)
#1
#1
#2
#3
#5
#8
#13
#21
#34
#55
#89
