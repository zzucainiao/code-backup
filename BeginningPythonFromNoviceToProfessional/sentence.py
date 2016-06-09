
a = [1, 2, 3]
b = [1, 2, 3]

if a == b:
    print("a equal b")
else:
    print("a equal not b")

if a is b:
    print("a is b")
else:
    print("a is not b")

b = {"name" : "wangbing", "gf":["a", "b"]}
c = b.copy()

if b["name"] == c["name"]:
    print("b[name] equal c[name]")
else:
    print("b[name] not equal c[name]")

if b["gf"] == c["gf"]:
    print("b[gf] equal c[gf]")
else:
    print("b[gf] not equal c[gf]")

if b["name"] is c["name"]:
    print("b[name] is c[name]")
else:
    print("b[name] is not c[name]")

if b["gf"] is c["gf"]:
    print("b[gf] is c[gf]")
else:
    print("b[gf] is not c[gf]")

age = 10
if 5 < age < 18:
    print("teenage")
else:
    print("not teenage")
#assert 20 < age, "age must larger than 20"

#xrange only python2 and python3 range is already xrange
for i in range(1, 10):
    print(i, end=" ")
print()
names = ["a", "b", "c"]
for i, name in zip(range(0, 10000000000000), names):
    print(i, name)

for i, name in enumerate(names):
    print(i, name)
