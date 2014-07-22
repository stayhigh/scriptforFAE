import socket
import fcntl
import struct

def get_ip_address(ifname):
    s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    return socket.inet_ntoa(fcntl.ioctl(
        s.fileno(),
        0x8915,  # SIOCGIFADDR
        struct.pack('256s', ifname[:15])
    )[20:24])

#show out lo interface'127.0.0.1'
resultIP = get_ip_address('lo')
print 'lo interface  :', resultIP

#show out eth0 interface'127.0.0.1'
resultIP = get_ip_address('eth0')
print "eth0 interface:",resultIP
