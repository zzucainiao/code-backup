from string import Template

s = Template("${name} is good")

v = s.substitute(name = "wangbing")

print("%s %s" % (repr(s), v))

d = {"name" : "hehe", "value": "namei"}
#d = {"nme" : "hehe", "value": "namei"} error

v = s.substitute(d)

print("%r %s" % (repr(s), v))


#<string.Template object at 0x7f680c5cd550> wangbing is good
#'<string.Template object at 0x7f680c5cd550>' hehe is good
