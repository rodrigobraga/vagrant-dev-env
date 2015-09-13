#!/usr/bin/env bash

export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

locale-gen pt_BR.UTF-8
locale-gen en_US.UTF-8

dpkg-reconfigure locales

sudo apt-get update -y
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
sudo apt-get autoremove -y
sudo apt-get clean

sudo apt-get install -y \
    dos2unix            \
    screen              \
    samba

echo 'if [ -d "/vagrant/bin" ]; then PATH=$PATH":/vagrant/bin"; fi' >> ~/.profile
