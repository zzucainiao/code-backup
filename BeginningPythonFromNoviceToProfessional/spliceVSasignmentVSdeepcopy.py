import copy

names = ["a", "b", "c", ["x"]]
a = names #
a.append("d")

print(names)
print(a)
#['a', 'b', 'c', ['x'], 'd']
#['a', 'b', 'c', ['x'], 'd']

b = names[:]
b.append("e")
b[3].append("y")
print(b)
print(names)
#['a', 'b', 'c', ['x', 'y'], 'd', 'e']
#['a', 'b', 'c', ['x', 'y'], 'd']

names = tuple(names)
b[3].append("y")

c = copy.deepcopy(names) 
c[3].append("z")
print(c)
print(names)
#('a', 'b', 'c', ['x', 'y', 'y', 'z'], 'd')
#('a', 'b', 'c', ['x', 'y', 'y'], 'd')
