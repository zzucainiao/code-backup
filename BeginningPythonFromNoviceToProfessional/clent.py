import socket

s = socket.socket()
port = 1234

host = socket.gethostname()
s.connect((host, port))
while True:
    sen = input("input:")
    if not sen:
        break
    s.send(sen.encode())
s.close()
#print(s.recv(1024).decode())
