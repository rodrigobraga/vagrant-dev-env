#!/bin/bash

cp /vagrant/dotfiles/.* /home/vagrant

for f in ".bash_profile" ".bashrc" ".gitconfig" ".jshintrc" ".jslintrc" ".screenrc" ".vimrc"
do
    dos2unix /home/vagrant/$f
done

#source /home/vagrant/.bash_profile