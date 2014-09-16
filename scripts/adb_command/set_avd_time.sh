#!/bin/sh

#set the android virtual device to the same of the host time
adb shell date $(date +%s)
