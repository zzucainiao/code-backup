
class Bird():
    def __init__(self):
        self.hungry = True
    def eat(self):
        if self.hungry:
            print("eat eat")
            self.hungry = False
        else:
            print("no Thranks")
class SongBird(Bird):
    def __init__(self):
        #Bird.__init__(self)
        super(SongBird, self).__init__()
        self.song = "lala"
    def sing(self):
        print(self.song)

a = Bird()
a.eat()
a.eat()
Bird.eat(Bird())

b = SongBird()
b.sing()
b.eat()
#eat eat
#no Thranks
#eat eat
#lala
#eat eat
