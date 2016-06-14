from ConfigParser import ConfigParser

CONFIGFILE = "config.file"

config = ConfigParser()
config.read(CONFIGFILE)

print(config.get("messages", "greeting"))

radius = float(input(config.get("messages", "question")))

print(config.get("messages", "result_message"))
print(config.getfloat("numbers", "pi") * radius ** 2)
