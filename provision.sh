#!/usr/bin/env bash

# fix's
apt-get remove -y grub-gfxpayload-lists grub-pc grub-pc-bin grub2-common

# update
apt-get update -y
#sudo apt-get upgrade -y
#sudo apt-get dist-upgrade -y
apt-get autoremove -y
apt-get clean

#
locale-gen pt_BR

# 
apt-get install -y g++ make curl git vim python python-setuptools python-virtualenv python-software-properties screen samba nginx postgresql

echo 'if [ -d "/vagrant/bin" ]; then PATH=$PATH":/vagrant/bin"; fi' >> ~/.profile