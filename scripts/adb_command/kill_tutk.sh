#adb command to kill the process number which name contains tutk word
adb shell kill $(adb shell ps |grep tutk  |awk '{print $2}')
