#!/bin/sh

#The -e flag tells it to attach to the running emulator, “-v time” tells it to add a timestamp. The *:S parameter tells it to silence output from anything not otherwise white-listed. Include the tag names for Android apps/processes you want to see the logs for, and the log level to show. Here we’ve included WebCore and browser, which are tags that I’ve read are used for the built in web browser. The :V portion causes logcat to show maximum verbosity.

adb -e logcat -v time WebCore:V browser:V *:S
