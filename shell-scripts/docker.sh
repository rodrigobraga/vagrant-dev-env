#!/usr/bin/env bash

# docker
curl -sSL https://get.docker.com/ | sh

usermod -aG docker ubuntu

# compose
curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > docker-compose
mv docker-compose /usr/local/bin/
chmod +x /usr/local/bin/docker-compose

# compose command completion
curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose --version | awk 'NR==1{print $NF}')/contrib/completion/bash/docker-compose > docker-compose-completion
mv docker-compose-completion /etc/bash_completion.d/docker-compose

# machine
curl -L https://github.com/docker/machine/releases/download/v0.7.0/docker-machine-`uname -s`-`uname -m` > docker-machine
mv docker-machine /usr/local/bin/
chmod +x /usr/local/bin/docker-machine
