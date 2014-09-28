#!/usr/bin/env bash

curl -sL https://deb.nodesource.com/setup | sudo bash -

apt-get install -y nodejs

# set node path
echo 'if [ -d "/usr/lib/node_modules" ]; then NODE_PATH="/usr/lib/node_modules"; fi' >> ~/.profile
