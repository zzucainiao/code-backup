#SockerServer for python2
from socketserver import TCPServer, ForkingMixIn, StreamRequestHandler
#ThreadMixIn for multithread

class Server(ForkingMixIn, TCPServer):
    pass

class Handle(StreamRequestHandler):
    def handle(self):
        addr = self.request.getpeername()
        print("get connect from %s" % repr(addr))
        self.wfile.write("Thank you for connecting".encode())

server = Server(("", 1234), Handle)
server.serve_forever()
