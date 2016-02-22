#!/bin/bash

#reference: https://github.com/Valloric/YouCompleteMe#mac-os-x-installation

#install brew 

function installbrew(){
    which brew || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

#install cmake if it has not been installed
function installcmake(){
    brew info cmake > /dev/null || brew install cmake
}

#Compiling YCM without semantic support for C-family languages:
function compilingYCM(){
    cd ~/.vim/bundle/YouCompleteMe && sh install.sh
}

installbrew && installcmake && compilingYCM
