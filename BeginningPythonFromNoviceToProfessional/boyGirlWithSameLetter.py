
grils = ["allice", "berend", "clarice", "amen"]
boys = ["chris", "arnold", "bob"]

print("girls:")
for i, name in enumerate(grils):
    print("%d %s" % (i, name))
print("boys:")
for i, name in enumerate(boys):
    print("%d %s" % (i, name))

firstLetterMap = {}
for name in grils:
    firstLetterMap.setdefault(name[0], []).append(name)

same = [(boy, girl) for boy in boys for girl in firstLetterMap[ boy[0] ]]
print(same)

a = [ [] for i in range(1, 10)]
print(a)
a[0].append(0)
print(a)
