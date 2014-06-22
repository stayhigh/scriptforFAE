#!/bin/bash
#Assuming uninitialized variables (variables before a value is assigned to them) are "zeroed out". An uninitialized variable has a value of null, not zero)

echo "uninitialized_var = $uninitialized_var"
# uninitialized_var =

# However . . .
# if $BASH_VERSION ≥ 4.2; then

if [[ ! -v uninitialized_var ]]
then
  uninitialized_var=0   # Initialize it to zero!
fi

