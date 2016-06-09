
def print_para(name, *para):
    print(name)
    print(para)

def print_para2(name, **para):
    print(name)
    print(para)

print_para("wangbing")
print_para("wangbing", 1)
print_para("wangbing", 1, 2, 3)
#TypeError: print_para2() takes 1 positional argument but 4 were given
#print_para2("wangbing", 1, 2, 3)
print_para2("wangbing", x=1, y=2, z=3)

def with_stats(**kwds):
    print("%(name)s is %(age)d years old" % kwds)

def without_stats(kwds):
    print("%s is %d years old" % (kwds['name'], kwds["age"]))

para = {"name":"wangbing", "age":24}
with_stats(**para)
with_stats(name="wangbing", age=24)
without_stats(para)

