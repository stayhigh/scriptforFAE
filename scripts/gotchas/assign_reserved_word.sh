#!/bin/bash


case=value0       # Causes problems.
23skidoo=value1   # Also problems.
# Variable names starting with a digit are reserved by the shell.
# Try _23skidoo=value1. Starting variables with an underscore is okay.

# However . . .   using just an underscore will not work.
_=25
echo $_           # $_ is a special variable set to last arg of last command.
# But . . .       _ is a valid function name!

xyz((!*=value2    # Causes severe problems.
# As of version 3 of Bash, periods are not allowed within variable names.
