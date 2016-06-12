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
#pi: 3.141593
#pi:   3.141593
#pi:      3.142
#pi: 3.142
#pi: 000003.142
#pi:                3.142
#pi: 3.141593E+00
#pi: 3.141593e+00
#pi: longe
#pi: longerthan5
#pi: 3.142     after
# 10
#-10
