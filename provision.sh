#!/usr/bin/env bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"

sudo apt-get update -y
sudo DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade
sudo apt-get autoremove -y
sudo apt-get clean

locale-gen pt_BR.*
locale-gen en_US.*

apt-get install -y  g++                                 \
                    make                                \
                    curl                                \
                    linux-image-generic-lts-raring      \
                    linux-headers-generic-lts-raring    \
                    apt-transport-https                 \
                    git                                 \
                    vim                                 \
                    vim-scripts                         \
                    python                              \
                    python-dev                          \
                    python-software-properties          \
                    software-properties-common          \
                    screen                              \
                    samba                               \
                    dos2unix

echo 'if [ -d "/vagrant/bin" ]; then PATH=$PATH":/vagrant/bin"; fi' >> ~/.profile
