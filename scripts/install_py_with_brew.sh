#!/bin/bash

# install brew from curl command
# install easy_install to install pip 
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
sudo easy_install pip 


# install PIL, imagemagick, graphviz and other
# image generating stuff
#ln -s /usr/local/include/freetype2 /usr/local/include/freetype # doesn't seem to be necessary anymore... on some systems freetype couldn't be found otherwise
brew install pillow
brew install imagemagick --with-fftw --with-librsvg --with-x11
brew install graphviz --with-librsvg --with-x11
brew install cairo
brew install py2cairo # this will ask you to download xquartz and install it
brew install qt pyqt

# install virtualenv, nose (unittests & doctests on steroids)
pip install virtualenv
pip install nose

# install numpy and scipy
# there are two ways to install numpy and scipy now: via pip or via brew.
# PICK ONE:
pip install numpy
pip install scipy
# OR:
# (if you want to run numpy and scipy with openblas also remove comments below:)
#brew install openblas
brew install numpy # --with-openblas
brew install scipy # --with-openblas

# test the numpy & scipy install
python -c 'import numpy ; numpy.test();'
python -c 'import scipy ; scipy.test();'

# some cool python libs (if you don't know them, look them up)
# matplotlib: generate plots
# pandas: time series stuff
# nltk: natural language toolkit
# sympy: symbolic maths in python
# q: fancy debugging output
# snakeviz: cool visualization of profiling output (aka what's taking so long?)
brew install matplotlib --with-cairo --with-tex  # cairo: png ps pdf svg filetypes, tex: tex fonts & formula in plots
pip install pandas
pip install nltk
pip install sympy
pip install q
pip install snakeviz

# ipython with parallel and notebook support
brew install zmq
pip install ipython[all]

# html stuff (parsing)
pip install html5lib cssselect pyquery lxml BeautifulSoup

# webapps / apis (choose what you like)
pip install Flask Django tornado

# semantic web stuff: rdf & sparql
pip install rdflib SPARQLWrapper

# graphs (graph metrics, social network analysis, layouting)
pip install networkx
brew install graph-tool
