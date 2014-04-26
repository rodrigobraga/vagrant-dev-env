#!/usr/bin/env bash

wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

echo "

# heroku.com CONFIG
  Host heroku.com
  HostName heroku.com
  PreferredAuthentications publickey
  IdentityFile /home/vagrant/.ssh/bitbucket.org_id_rsa" >> ~/.ssh/config