#!/bin/sh

echo "GO TO goosh.org website"
firefox goosh.org

<<usage_comment
1. Google web search from Command Line Prompt

Following is the syntax for the search.
Syntax: [web|search|s|w] keywords
Start the search using s followed by the keyword as shown below. This will gives you the top most 4 URL as result.

guest@goosh.org:/web> s the geek stuff
To get more search results do one of the following.

guest@goosh.org:/web> more

(or)

guest@goosh.org:/web> {Enter-Key}
Most of the 15 Awesome Google Search Tips and Tricks are applicable in Goosh prompt also.

2. View Google Map from Command Line

Goosh command ‘place’ is used to do a google map search from the goosh prompt. Following is the syntax to do the search in google maps.

Syntax: place/places/map/p address
Fig: Locate Address in Google Map
Fig: Locate Address in Google Map


3. Search Wikipedia from Command Prompt

Use wiki command to search the Wikipedia website as shown below. Following example will search for geek in wikipedia and return the output.

syntax: [wiki|wikipedia] keyword

guest@goosh.org:/web> wiki geek
4. Open Website in Browser from Command Line

Following example will open http://www.thegeekstuff.com

syntax: go/g URL

guest@goosh.org:/web> go www.thegeekstuff.com
5. Perform Calculations From Command Prompt

Use Calc for calculations as shown below.

Syntax: calculate/calc

guest@goosh.org:/web> calculate 100+1
100+1 = 101

guest@goosh.org:/web> calculate 124/5
124/5 = 24.8
6. Search Google news from Command Prompt

Goosh command ‘news’ is to read news on your favourite topic from the goosh prompt. Following is the syntax for reading Google news.

The following example provides the latest news about Michael Jackson.

Syntax: news/n KEYWORD

guest@goosh.org:/web> news michael jackson
7. Translate a word in Google Translate from Goosh Prompt

Goosh provides a command to translate a word from one language to another language.

Following example translates the word “Good Morning” from English to Spanish.

Syntax: translate/trans/t [lang1] [lang2] STRING

guest@goosh.org:/web> translate en es good morning
translating "good morning" from english to spanish:

"buenos días"

guest@goosh.org:/web>
8. I’m Feeling Lucky – Get the 1st Search Output Always from Command Line

Simulate the “I’m Feeling Lucky” Google button behavior from command line as shown below. The example below will open the 1st results for Paris Hilton automatically.

Syntax: lucky/l searchkeywords

guest@goosh.org:/web> lucky paris hilton
9. More: Get more results, that is the next results set page.

Goosh command “more” gives next set of URLs for your last search which is very useful when you want to go beyond the next 4 results.

syntax: more/m

guest@goosh.org:/web> more
10. Search Google Images From Command Prompt

Use Goosh command images as shown below.

Syntax: images/image/i searchword
The following example shows the 1st output of the image for search “taj mahal”

Fig: Google Image Search
Fig: Google Image Search
11. Google blogs: Search in blogs using Google blog search.

Goosh command “blogs” in goosh is used to do search in blogs using google blogs search. This will display the list of blogs URL which matches the given keyword.

Syntax: blogs/blog/b blogsearchwords
12. Search YouTube Videos from Command Prompt

Goosh provides a way to do a google video search using command “video”. The following example shows how to search for Susan Boyle’s YouTube video

Syntax: video/v KEYWORDS

guest@goosh.org:/web> video susan boyle
Fig: Search Youtube from Command Prompt
Fig: Search Youtube from Command Prompt
13. All available Goosh commands

Goosh command “ls” command is used to list out all the available goosh commands.

Syntax: ls

guest@goosh.org:/web> ls
web         news      more      blogs      read      feeds
place       translate images    video      clear
wiki        help      cd        site       open
go          lucky     ls        addengine  load
calculate   settings  gmail     login      logout
Help command gives more details about a specific goosh command as shown below.

ramesh.thegeekstuff@goosh.org:/web> help settings
help: settings

command aliases parameters  function
settings  (set) [name] [value]  edit settings

examples:
set lang de - sets language to german
set lang - displays value of lang-setting
settings - displays all settings
settings reset - reset all settings to default values
14. View and Edit Goosh Settings

View the current Goosh settings as shown below.

guest@goosh.org:/web> settings
name  value default help
lang  en  en  google default language
results 10  4 number of results for google-searches (1..100)
timeout 4 4 timeout for ajax requests in seconds (1..100)
style.bg  #FFFFFF #FFFFFF goosh background color
style.fg  #000000 #000000 goosh font color
style.hl  #009900 #009900 goosh highlight color
style.sh  #666666 #666666 goosh 'shaded' color
style.link  #0000CC #0000CC goosh link color
style.vlink #551a8b #551a8b goosh visited link color
place.width 300 300 width of map image (20..600)
place.height  150 150 height of map image (20..500)
To change the default number of results shown from 4 to 10 use the following command.

guest@goosh.org:/web> settings results 10
results is set to "10".
15. Access Gmail from Command Prompt

When you enter login command as shown below, it will forward you to Google accounts page to enter your authentication to login to Gmail.

Syntax: login

guest@goosh.org:/web> login
Once you enter this command, it loads Gmail login page. You just enter your gmail account details (username and password) and hit enter which will log you into gmail.

If the provided credentials are correct, it provides you a Goosh prompt with your account name in it. This indicates that you’ve successfully logged in to gmail from command prompt.

  ramesh.thegeekstuff@goosh.org:/web>
  Goosh command “gmail” is for you to read and write in gmail. It provides you to access your gmail account in google shell itself. This is a mobile version of the gmail embedded for easy display.

  Syntax: gmail

  ramesh.thegeekstuff@goosh.org:/web> gmail

usage_comment
