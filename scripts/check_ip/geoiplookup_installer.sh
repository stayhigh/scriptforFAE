#installation for Debian/Ubuntu
sudo apt-get -y install geoip-bin geoip-database

#perform a lookup 
#geoiplookup www.google.com.tw
#GeoIP Country Edition: US, United States
#Some Tricks with cat, grep, sed, and xargs
#If you have a text file with a list of IP addresses you can instead pass it thru with xargs
#cat ./ip_list.txt | xargs -n 1 geoiplookup { }
#GeoIP Country Edition: US, United States
#GeoIP Country Edition: CN, China
#GeoIP Country Edition: JP, Japan
#GeoIP Country Edition: BR, Brazil
#GeoIP Country Edition: SG, Singapore
#GeoIP Country Edition: SG, Singapore
#GeoIP Country Edition: SG, Singapore
#If you have duplicate IPs you can filter them out with sort and uniq:
#
#cat ./ip_list.txt | sort | uniq | xargs -n 1 geoiplookup { }
#But that by itself may not be too useful to you. Perhaps you want to get the total number of IPs in a file sorted by the least instances to the most instances of a single country.
#
#cat ./ip_test.txt | sort | uniq | xargs -n 1 geoiplookup { } | sort | uniq -c | sort
#2 GeoIP Country Edition: JP, Japan
#3 GeoIP Country Edition: FR, France
#3 GeoIP Country Edition: GB, United Kingdom
#3 GeoIP Country Edition: IP Address not found
#3 GeoIP Country Edition: RU, Russian Federation
#3 GeoIP Country Edition: SG, Singapore
#3 GeoIP Country Edition: UA, Ukraine
#4 GeoIP Country Edition: TH, Thailand
#5 GeoIP Country Edition: KR, Korea, Republic of
#6 GeoIP Country Edition: DE, Germany
#7 GeoIP Country Edition: TR, Turkey
#27 GeoIP Country Edition: CN, China
#28 GeoIP Country Edition: US, United States
#If you’re using pf (OpenBSD’s Packet Filter) with pflog, you can even get an output of the most countries that were blocked in your packet filter log with the following command:
#
#tcpdump -ntr /var/log/pflog | awk '{print }' | sed -r 's/ \>.*//g' | \
#grep -oE '[0-9]{1,}.[0-9]{1,}.[0-9]{1,}.[0-9]{1,}' | grep -v "0.0.0.0" | \
#sort -n | uniq | xargs -n 1 geoiplookup { } | sort | uniq -c | sort -n | sed -r 's/ GeoIP Country Edition://g'
#
#1 AR, Argentina
#1 BB, Barbados
#1 BG, Bulgaria
#1 CA, Canada
#1 CZ, Czech Republic
#1 EU, Europe
#1 HR, Croatia
#1 ID, Indonesia
#1 IE, Ireland
#1 IS, Iceland
#1 IT, Italy
#1 LA, Lao People`s Democratic Republic
#1 LB, Lebanon
#1 PT, Portugal
#1 RO, Romania
#1 UY, Uruguay
#1 VN, Vietnam
#2 BR, Brazil
#2 ES, Spain
#2 IN, India
#2 JP, Japan
#3 FR, France
#3 GB, United Kingdom
#3 IP Address not found
#3 RU, Russian Federation
#3 SG, Singapore
#3 UA, Ukraine
#4 TH, Thailand
#6 DE, Germany
#6 KR, Korea, Republic of
#7 TR, Turkey
#27 CN, China
#29 US, United States
