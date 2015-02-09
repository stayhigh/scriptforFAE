from selenium import webdriver
import time

"""print out all element by class 'ulist'"""
driver = webdriver.Firefox ()
url = "http://news.baidu.com/"
driver.get(url)
time.sleep(5)
element_list= driver.find_elements_by_class_name('ulist')
for line in element_list:
    print "=> ", line.text
