from copy import deepcopy

x = [1, "heh", 3, 6]

d = {"num" : x, "name" : "wangbing"}
print(d)
c = d.copy()
print(c)
c["name"] = "change only"
c["num"][1] = "all change"
print(c)
print(d)

a = dict.fromkeys(["wang", "bing"], "default")
print(a)

a = {}
a.get("wangbing", "default")

if "wangbing" in a:
    print("get add key")
else:
    print("get not add key different with cpp")

#if no set default return default else return value
print(a)
print(a.setdefault("wangbing", "None"))
print(a)
a["wangbing"] = 'hehe'
print(a)
print(a.setdefault("wangbing", "None"))
print(a)
#iteritems python2 only
#for k, v in c.iteritems():
#    print(k ,v)
name = "wangbing"
greeting = "hello"
print("%s %s" % (greeting, name))
