#!/bin/sh

#show the average of loading on the system per 10 secs
watch -n 3 'cat /proc/loadavg'
#watch the commandline per second
watch -n 1 -d=cumulative tail targetfile.txt

#monitoring the number of http connections
watch -n 1 -d 'pstree|grep http'

#monitoring the change of file
watch -d 'ls -l|grep targetfile.txt'
