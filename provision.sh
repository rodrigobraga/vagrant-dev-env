#!/usr/bin/env bash

apt-get update -y
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
#sudo apt-get upgrade -y
#sudo apt-get dist-upgrade -y
apt-get autoremove -y
apt-get clean

locale-gen pt_BR.*

apt-get install -y g++ make curl git vim vim-scripts python python-dev python-setuptools python-virtualenv python-software-properties screen samba nginx postgresql postgresql-server-dev-all dos2unix

echo 'if [ -d "/vagrant/bin" ]; then PATH=$PATH":/vagrant/bin"; fi' >> ~/.profile
