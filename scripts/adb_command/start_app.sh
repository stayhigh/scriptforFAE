#!/bin/sh

#start app on device
adb shell am start -n com.tutk.sample.AVAPI/com.tutk.sample.AVAPI.MainActivity


<<NOTE
#adb shell
am start -n com.package.name/com.package.name.ActivityName

#Or you can use this directly:
adb shell am start -n com.package.name/com.package.name.ActivityName
You can also specify actions to be filter by your intent-filters:

am start -a com.example.ACTION_NAME -n com.package.name/com.package.name.ActivityName
NOTE
