from selenium import webdriver

"""Focus by id"""
BrowserObj_dirver = webdriver.Firefox()
BrowserObj_dirver.get( "http://www.google.com")
BrowserObj_dirver.implicitly_wait(5)
BrowserObj_dirver.execute_script('document.write("hello world")') # change the webpage content to 'hello world'
print BrowserObj_dirver
print "OK"
