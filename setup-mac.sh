#!/bin/sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/science
brew install git python3 python-virtualenv python3-devel 
	gcc gcc-c++ python3-numpy python3-numpy-devel 
	python3-scipy python3-matplotlib python3-IPython 
	libxml2-devel lzlib-devel 

mkdir orange3env
virtualenv -p python3 --system-site-packages orange3env
source orange3env/bin/activate

git clone https://github.com/biolab/orange3
cd orange3
pip install -r requirements.txt
python setup.py develop
pip install Orange-Bioinformatics networkx python-igraph

ipython3 notebook
