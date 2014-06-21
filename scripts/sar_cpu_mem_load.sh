#which command return code list
#EXIT STATUS
#0      if all specified commands are found and executable
#1      if one or more specified commands is nonexistent or not executable
#2      if an invalid option is specified

which sar

if test $? -ne 0
then
  tput setf 4
  echo "[failed] sar not existed"
  tput sgr0
else
  tput setf 2
  echo "producing cpu.csv mem.csv load.csv"
  tput sgr0
  sar -u 1 10 > ./cpu.csv &
  sar -r 1 10 > ./mem.csv &
  sar -q 1 10 > ./load.csv &
fi
