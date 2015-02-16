#!/bin/sh

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/science
brew install git python3 gcc suite-sparse swig

pip3 install virtualenv
virtualenv -p python3 orange3env
source orange3env/bin/activate

git clone https://github.com/biolab/orange3
cd orange3
pip install -r requirements.txt
python setup.py develop
pip install ipython "ipython[notebook]" Orange-Bioinformatics networkx python-igraph

ipython notebook
