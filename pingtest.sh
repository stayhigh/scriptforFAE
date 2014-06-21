#!/bin/sh
# -q quiet
# -c nb of pings to perform
#tput:  2 for green, 4 for red color
#Color Code for tput:
#0 - Black
#1 - Red
#2 - Green
#3 - Yellow
#4 - Blue
#5 - Magenta
#6 - Cyan
#7 - White
#detail:
#http://www.thegeekstuff.com/2008/09/bash-shell-ps1-10-examples-to-make-your-linux-prompt-like-angelina-jolie/



ping_localhost(){
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
}

ping_google(){
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
}

ping_localhost
ping_google

