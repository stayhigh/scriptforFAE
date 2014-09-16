#!/usr/bin/python

print """show current timestamp"""
import time
timestamp = time.time()
print timestamp # 1355563265.81

print """show date from timestamp"""
import datetime
currenttime = datetime.datetime.fromtimestamp(timestamp).strftime('%Y-%m-%d %H:%M:%S')
print currenttime #2012-12-15 01:21:05

print """show current UTC time"""
print datetime.datetime.utcnow()

print """show the current time with the specified format"""
print datetime.datetime.now().strftime("%A, %d. %B %Y %I:%M%p")

print """show the ISO format"""
print datetime.datetime.now().isoformat()


print """show UTC time from timestamp"""
print datetime.datetime.utcfromtimestamp(timestamp)
