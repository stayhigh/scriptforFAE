#!/bin/bash
# portcheck tool
# errorcode list
# 1 host port open
# 1 invalid argument
# 2 host port closed

usage()
{
    echo "\n USAGE: ./${0##*/} [host|ip] \n"
    return 1
}

check_port()
{
    local host=${1}
    local port=${2}
    if nc -w 5 -z ${host-ip} ${port} 2>/dev/null
    then
      echo "\a\n => Port ${port} at ${host} is open"
    else
      echo "\a\n => Port ${port} at ${host} is closed"
      return 2
    fi
}

if test $# -ne 2
then
  usage
else
  check_port ${1} ${2}
fi

