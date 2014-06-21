echo "producing cpu.csv mem.csv load.csv"
sar -u 1 10 > ./cpu.csv &
sar -r 1 10 > ./mem.csv &
sar -q 1 10 > ./load.csv &
