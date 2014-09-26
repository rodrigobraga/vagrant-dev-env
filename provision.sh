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

apt-get install -y  g++                                 \
                    make                                \
                    curl                                \
                    linux-image-generic-lts-raring      \
                    linux-headers-generic-lts-raring    \
                    apt-transport-https                 \
                    git                                 \
                    ssh                                 \
                    vim                                 \
                    vim-scripts                         \
                    python                              \
                    python-dev                          \
                    python-software-properties          \
                    ruby                                \
                    ruby-dev                            \
                    software-properties-common          \
                    screen                              \
                    samba                               \
                    dos2unix

echo 'if [ -d "/vagrant/bin" ]; then PATH=$PATH":/vagrant/bin"; fi' >> ~/.profile
