import socket

s = socket.socket()

s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
host = socket.gethostname()
print(host)
port = 1234
s.bind((host, port))

s.listen(5)
while True:
    c, add = s.accept()
    print("got connect from %s" % (repr(add)))
    c.send("Thank you for connecting".encode())
    c.close()
s.close()
