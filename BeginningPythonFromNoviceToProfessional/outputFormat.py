from math import pi

print("pi: %f" % pi)
print("pi: %10f" % pi)
print("pi: %10.3f" % pi)
print("pi: %.3f" % pi)
print("pi: %010.3f" % pi)
print("pi: %*.3f" % (20, pi))
print("pi: %E" % pi)
print("pi: %e" % pi)
print("pi: %.5s" % "longerthan5")
print("pi: %5s" % "longerthan5")


print("pi: %-10.3fafter" % pi) #align left
print("% d\n% d" % (10, -10)) #positive add space
