#!/usr/bin/env bash

# custom repos
add-apt-repository -y ppa:chris-lea/node.js
apt-get update -y
apt-get install nodejs -y

# set node path
echo 'if [ -d "/usr/lib/node_modules" ]; then NODE_PATH="/usr/lib/node_modules"; fi' >> ~/.profile

# see http://www.deployd.com
# npm install deployd -g

# task tools
npm install -g grunt

# package manager
npm install -g bower

# RequireJS / r.js
npm install -g requirejs
