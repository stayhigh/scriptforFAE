#!/bin/sh

check_public_ip(){
    echo "check public IP by site:$1"
    curl $1
    echo "\n--------------------------------\n"
}

check_public_ip ipecho.net/plain
check_public_ip icanhazip.com
check_public_ip ipv4.icanhazip.com
check_public_ip ident.me
check_public_ip v4.ident.me
check_public_ip http://smart-ip.net/myip


#check IPv6
#check_public_ip v6.ident.me
#check_public_ip ipv6.icanhazip.com



