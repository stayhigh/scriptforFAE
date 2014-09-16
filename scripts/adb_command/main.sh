#!/bin/sh

#kill process and then uninstall app. After uninstalled the app, start app again. Using the adb logcat function to monitor the result
adb shell date $(date +%s)
sh -x kill_tutk.sh && sh -x uninstall_app.sh && sh -x start_app.sh  && sh -x adb_logcat.sh 

