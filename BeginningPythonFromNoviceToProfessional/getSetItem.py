
def checkIndex(index):
    if not isinstance(index, (int)):
        raise TypeError
    if index < 0:
        raise IndexError

class ArithmeticSequence(object):
    def __init__(self, start = 0, step = 1):
        self.start = start
        self.step = step
        self.change = {}
    def __getitem__(self, key):
        checkIndex(key)
        try:
            return self.change[key]
        except KeyError:
            return self.start + key * self.step
    def __setitem__(self, key, value):
        checkIndex(key)
        self.change[key] = value

a = ArithmeticSequence(1, 2)
print(a[2])
a[2] = 10
print(a[2])
print(a[100000000000000000000])
#5
#10
#200000000000000000001
