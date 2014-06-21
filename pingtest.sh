#!/bin/sh
 
# -q quiet
# -c nb of pings to perform
#tput:  2 for green, 4 for red color
 

echo "ping localhost 5 times ..."
ping -q -c5 localhost > /dev/null
if [ $? -eq 0 ]
then
        tput setf 2
	echo "[ok] ping localhost"
	tput sgr0
else
        tput setf 4
	echo "[failed] ping localhost"
	tput sgr0

fi

echo "ping google.com 5 times ..."
ping -q -c5 google.com > /dev/null
 
if [ $? -eq 0 ]
then
        tput setf 2
	echo "[ok] ping google.com"
	tput sgr0
else
        tput setf 4
	echo "[failed] ping google.com"
	tput sgr0
fi
