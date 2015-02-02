#!/bin/bash

#check from uname command => ( i386 => 32bits, x86_64 => 64bits )
uname -m 

#check from bash binary info
file /bin/bash

#check from getconf => (32 => 32bits, 64 => 64bits)
getconf LONG_BIT
