#!/bin/sh


fileencoding=$(file -bi gbk.txt | sed -e 's/.*[ ]charset=//' |tr '[a-z]' '[A-Z]')
echo "[FILE ENCODING]: $fileencoding"
echo "WARNING: file command may detect wrong encoding!"
echo "WARNING: file command detect ISO-8859-1, but GBK is better encoding."

supportEncoding=$(iconv -l |grep ISO-8859-1)
echo "[ICONV SUPPORT LIST]:\n$supportEncoding"


systemEncoding=$(echo $LANG)
echo "[SYSTEM ENCODING]: $systemEncoding"

echo "from ISO-8859-1 to UTF-8 encoding"
iconv -f GBK -t UTF-8 gbk.txt

<<comment
附录字符编码表：
编码集：
ISO-8859-2  ISO 8859-2 standard; ISO Latin 2
ISO-8859-4  ISO 8859-4 standard; Latin 4
ISO-8859-5  ISO 8859-5 standard; ISO Cyrillic
ISO-8859-13 ISO 8859-13 standard; ISO Baltic; Latin 7
ISO-8859-16 ISO 8859-16 standard
CP1125  MS-windows code page 1125
CP1250  MS-Windows code page 1250
CP1251  MS-Windows code page 1251
CP1257  MS-Windows code page 1257; WinBaltRim
IBM852  IBM/MS code page 852; PC (DOS) Latin 2
IBM855  IBM/MS code page 855
IBM775  IBM/MS code page 775
IBM866  IBM/MS code page 866
baltic  ISO-IR-179; Baltic
KEYBCS2 Kamenicky encoding; KEYBCS2
macce Macintosh Central European
maccyr  Macintosh Cyrillic
ECMA-113  Ecma Cyrillic; ECMA-113
KOI-8_CS_2  KOI8-CS2 code ('T602')
KOI8-R  KOI8-R Cyrillic
KOI8-U  KOI8-U Cyrillic
KOI8-UNI  KOI8-Unified Cyrillic
TeX (La)TeX control sequences
UCS-2 Universal character set 2 bytes; UCS-2; BMP
UCS-4 Universal character set 4 bytes; UCS-4; ISO-10646
UTF-7 Universal transformation format 7 bits; UTF-7
UTF-8 Universal transformation format 8 bits; UTF-8
CORK  Cork encoding; T1
GBK Simplified Chinese National Standard; GB2312
BIG5  Traditional Chinese Industrial Standard; Big5
HZ  HZ encoded GB2312
行结束符：
/LF LF line terminators
/CRLF CRLF line terminators
N.A.  Mixed line terminators
N.A.  Surrounded by/intermixed with non-text data
/21 Byte order reversed in pairs (1,2 -> 2,1)
/4321 Byte order reversed in quadruples (1,2,3,4 -> 4,3,2,1)
N.A.  Both little and big endian chunks, concatenated
/qp Quoted-printable encoded
各国语言编码集：
Bulgarian CP1251 ISO-8859-5 IBM855 maccyr ECMA-113
Czech ISO-8859-2 CP1250 IBM852 KEYBCS2 macce KOI-8_CS_2 CORK
Estonian  ISO-8859-4 CP1257 IBM775 ISO-8859-13 macce baltic
Croatian  CP1250 ISO-8859-2 IBM852 macce CORK
Hungarian ISO-8859-2 CP1250 IBM852 macce CORK
Lithuanian  CP1257 ISO-8859-4 IBM775 ISO-8859-13 macce baltic
Latvian CP1257 ISO-8859-4 IBM775 ISO-8859-13 macce baltic
Polish  ISO-8859-2 CP1250 IBM852 macce ISO-8859-13 ISO-8859-16 baltic CORK
Russian KOI8-R CP1251 ISO-8859-5 IBM866 maccyr
Slovak  CP1250 ISO-8859-2 IBM852 KEYBCS2 macce KOI-8_CS_2 CORK
Slovene ISO-8859-2 CP1250 IBM852 macce CORK
Ukrainian CP1251 IBM855 ISO-8859-5 CP1125 KOI8-U maccyr
Chinese GBK BIG5 HZ
comment
