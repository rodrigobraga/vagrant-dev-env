#!/bin/bash

cp /vagrant/dotfiles/.* ~/

for f in ".bash_profile" ".bashrc" ".gitconfig" ".jshintrc" ".jslintrc" ".screenrc" ".vimrc"
do
    dos2unix ~/$f
done

source ~/.bash_profile
