#/bin/bash

git submodule init
git submodule update

ln -s ./vim ~/.vim
ln -s ./vimrc ~/.vimrc
ln -s ./bash_profile ~/.bash_profile
ln -s ./bashrc ~/.bashrc
ln -s ./conkyrc ~/.conkyrc
ln -s ./color/distinguished/colors/distinguished.vim ./vim/colors/
