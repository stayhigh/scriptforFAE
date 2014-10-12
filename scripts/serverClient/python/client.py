import socket   #for sockets
import sys  #for exit
 
host = 'localhost'
port = 8888

try:
    #create an AF_INET, STREAM socket (TCP)
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
except socket.error, msg:
    print 'Failed to create socket. Error code: ' + str(msg[0]) + ' , Error message : ' + msg[1]
    sys.exit();
finally:
	print 'Socket Created'
 
 
try:
    remote_ip = socket.gethostbyname( host )
except socket.gaierror:
    #could not resolve
    print 'Hostname could not be resolved. Exiting'
    sys.exit()
finally:
    print 'IP address of ' + host + ' is ' + remote_ip
 
#Connect to remote server
try:
	s.connect((remote_ip , port))
except Exception as e:
	print e.messages, e.args
finally:
	print 'Socket Connected to ' + host + ' on ip ' + remote_ip
