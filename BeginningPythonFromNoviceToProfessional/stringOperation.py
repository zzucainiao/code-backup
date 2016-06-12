from string import maketrans #only python2

s = "wangbing hehe nimei !!! $$$ !!!"

print(s.find("!!!"))
print(s.find("!!!", 1, 20))
print(s.find("!!!", 21))

lst = ["1", "2", "3"]
sep = "+"

s = sep.join(lst)
print(lst)
print(s)

print("WangBing".lower())

lst = s.split("+")
print(lst)

table = maketrans("abcd", "xyzw")
print(table[97:123], len(table))

s = "abcdefgx y".translate(table, " ") #delete space
print(s)
#20
#-1
#28
#['1', '2', '3']
#1+2+3
#wangbing
#['1', '2', '3']
#('xyzwefghijklmnopqrstuvwxyz', 256)
#xyzwefgxy
