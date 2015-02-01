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
      tput setf 2
      echo "\a\n[ok] => Port ${port} at ${host} is open"
      tput sgr0
    else
      tput setf 4
      echo "\a\n[failed] => Port ${port} at ${host} is closed"
      tput sgr0
      return 2
    fi
}

if test $# -ne 2
then
  usage
else
  check_port ${1} ${2}
fi

