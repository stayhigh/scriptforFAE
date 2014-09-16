import nmap
nm = nmap.PortScanner()
print "scanning the LAN..."
result = nm.scan(hosts='192.168.1.0/24', arguments='-v -vv -O')
print result
