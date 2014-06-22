#!/bin/bash
#Using whitespace inappropriately. In contrast to other programming languages, Bash can be quite finicky about whitespace
var1 = 23   # 'var1=23' is correct.
# On line above, Bash attempts to execute command "var1"
# with the arguments "=" and "23".
	
let c = $a - $b   # Instead:   let c=$a-$b   or   let "c = $a - $b"

if [ $a -le 5]    # if [ $a -le 5 ]   is correct.
#           ^^      if [ "$a" -le 5 ]   is even better.
                  # [[ $a -le 5 ]] also works.
