#!/usr/bin/env bash

apt-get update -y
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
apt-get autoremove -y
apt-get clean

locale-gen pt_BR.*

apt-get install -y g++ make curl linux-image-generic-lts-raring linux-headers-generic-lts-raring git vim vim-scripts python python-dev python-software-properties software-properties-common screen samba dos2unix

echo 'if [ -d "/vagrant/bin" ]; then PATH=$PATH":/vagrant/bin"; fi' >> ~/.profile
