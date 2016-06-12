#tidy need install  format the html pages
from subprocess import Popen, PIPE
text = open('a.html').read()
tidy = Popen('tidy', stdin=PIPE, stdout=PIPE, stderr=PIPE)

tidy.stdin.write(text)
tidy.stdin.close()
print tidy.stdout.read()
