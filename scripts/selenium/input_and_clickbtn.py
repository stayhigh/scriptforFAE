#!/usr/bin/python
# -*- coding:utf-8 -*-


from selenium import webdriver
from selenium.common.exceptions import NoSuchElementException
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium import webdriver
import time
import os 

# firefox profile settings 
url = "http://poem.kxgen.net/"
fp = webdriver.FirefoxProfile()
fp.set_preference("browser.download.manager.showWhenStarting",False)
fp.set_preference("browser.download.folderList",2)
fp.set_preference("browser.download.dir", os.getcwd())
fp.set_preference("browser.download.downloadDir",os.getcwd()) 
fp.set_preference("browser.download.defaultFolder", os.getcwd()) 
fp.set_preference("browser.helperApps.neverAsk.saveToDisk","image/png")
fp.set_preference("browser.helperApps.neverAsk.openFile", "CONTENT-TYPE")
browser = webdriver.Firefox(firefox_profile=fp) # Get local session of Firefox
browser.implicitly_wait(10)
browser.get(url) # Load page

"""
#other ways to set profile for firefox
fp.set_preference("browser.helperApps.neverAsk.saveToDisk","text/png")
fp.set_preference("browser.helperApps.neverAsk.saveToDisk","CONTENT-TYPE")
fp.set_preference('browser.helperApps.neverAsk.saveToDisk',"text/png")
fp.set_preference("browser.download.dir",os.getcwd())
fp.set_preference("browser.helperApps.neverAsk.saveToDisk","text/csv")
"""

#check browser's title
assert u"藏頭詩產生器" in browser.title # check the webpage title

#identify the target by name, id , or others items.
elem = browser.find_element_by_name("text") # Find the query box
"""elem = browser.find_element_by_xpath("//input[@name = 'text']") # Find the query box by xpath"""

#send keystrokes

eachnum = {
        1:u"ㄧ",
        2:u"二",
        3:u"三",
        4:u"四",
        5:u"五",
        6:u"六",
        7:u"七",
        8:u"八",
        9:u"九",
        }
# Test for each iteration chinese input 
for i in range(1,10):
    elem.send_keys(u"祝亭力天天開心" + eachnum[i])
    elem.send_keys(Keys.RETURN)
    time.sleep(2)  # Wait for human read
    download_btn = browser.find_element_by_id("default-submit") # Find the query box
    time.sleep(2)  # Wait for human read
    download_btn.find_element_by_id("default-submit").click()
    elem.clear()
    time.sleep(2)  # Wait for human read



#####for alert window 
#objAlert = browser.switch_to_alert()
#print objAlert.text
#objAlert.accept()
#objAlert.dismiss() # click the cancel button
#####

##### focus window
#current_window = browser.current_window_handle #get current new window handle
#all_windows = browser.window_handles
#for window in all_windows:
#    if window != current_window:
#        browser.switch_to_window(current_window)
##### 



"""
try:
        browser.find_element_by_xpath("//a[contains(@href,'http://seleniumhq.org')]")
except NoSuchElementException:
        assert 0, "can't find seleniumhq"
        browser.close()
"""

print "OK"
#browser.close()
