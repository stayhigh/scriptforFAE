#!/bin/sh

#update platform with cli mode
android update sdk --no-ui --filter platform

#update system images with cli mode
android update sdk --no-ui --filter system-images

#update SDK tools
android update sdk --no-ui --filter tool,platform-tool

#list all SDK 
android list sdk
