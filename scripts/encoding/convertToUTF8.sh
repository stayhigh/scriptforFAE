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
