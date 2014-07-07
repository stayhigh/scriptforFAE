#!/bin/bash

echo "PS4 => Bash shell executes the content of the PROMPT_COMMAND just before displaying the PS1 variable."
export PROMPT_COMMAND="date +%k:%m:%S"


