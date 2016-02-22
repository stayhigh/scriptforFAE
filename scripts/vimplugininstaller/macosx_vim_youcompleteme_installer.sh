#!/bin/bash

#reference: https://github.com/Valloric/YouCompleteMe#mac-os-x-installation

#symlink vim and install brew 
ln -s /usr/local/bin/mvim vim 
which brew || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#install cmake if it has not been installed
brew info cmake > /dev/null || brew install cmake

#Compiling YCM without semantic support for C-family languages:
cd ~/.vim/bundle/YouCompleteMe && sh install.sh

