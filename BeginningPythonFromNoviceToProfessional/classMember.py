
class bird():
    song = "abcd"
    members = 0
    def sing(self):
        bird.members += 1
        self.members += 1
        print(self.song)

a = bird()
a.song = "hehe"
b = bird()

a.sing()
b.sing()

print(a.members)
print(b.members)
print(bird.members)
print(a.__class__)

#hehe
#abcd
#2
#3
#2
#<class '__main__.bird'>
