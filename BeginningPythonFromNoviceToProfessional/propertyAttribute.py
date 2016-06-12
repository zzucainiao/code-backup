
class Rectangle(object):
    def __init__(self):
        self.width = 0
        self.height = 0
    def getSize(self):
        return (self.width, self.height)
    def setSize(self, size):
        self.width, self.height = size
    size = property(getSize, setSize)

r = Rectangle()
print(r.size)
r.size = 10, 20
print(r.width)
print(r.size)
#(0, 0)
#10
#(10, 20)
