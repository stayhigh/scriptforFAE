#!/bin/bash

SCRIPT_ABSPATH=$(readlink -f $0)
SCRIPTDIR=$(dirname $SCRIPT_ABSPATH)
echo script path: $SCRIPT_ABSPATH
echo NOW SWITCH INTO: $SCRIPTDIR
cd $SCRIPTDIR
cp .gitconfig ~/.gitconfig
echo cp .gitconfig ~/.gitconfig
cp .netrc ~/.netrc
echo cp .netrc ~/.netrc

