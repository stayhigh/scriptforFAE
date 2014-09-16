#!/bin/sh

#need to run adb kill-server to reset adb before executing adb devices again.
adb kill-server && adb devices  


#To target the only device attached, use adb -d <your command>. To target the only emulator, use adb -e <your command>. 
