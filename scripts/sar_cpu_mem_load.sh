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
