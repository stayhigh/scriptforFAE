import socket
import sys
 
HOST = ''   # Symbolic name meaning all available interfaces
PORT = 8888 # Arbitrary non-privileged port
backlog = 10 #listen for connections made to socket
 
try:
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
except socket.error:
	print "Failed to create socket"
	sys.exit()
finally:
	print 'Socket created'

try:
    s.bind((HOST, PORT))
except socket.error , msg:
    print 'Bind failed. Error Code : ' + str(msg[0]) + ' Message ' + msg[1]
    sys.exit()
finally:     
    print 'Socket bind complete'
 
try:
	s.listen(backlog)
except Exception as e:
	print e.messages, e.args
finally:
	print 'Socket now listening'
 
#wait to accept a connection - blocking call
while True:
	try:
		conn, addr = s.accept()
	except Exception as e: 
		print e.messages, e.args
	finally:
		#display client information
		print 'Connected with ' + addr[0] + ':' + str(addr[1])
