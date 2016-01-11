#!/usr/bin/env bash

# docker
curl -sSL https://get.docker.com/ | sh

usermod -aG docker vagrant

# compose
curl -L https://github.com/docker/compose/releases/download/1.5.2/docker-compose-`uname -s`-`uname -m` > docker-compose
mv docker-compose /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# compose command completion
curl -L https://raw.githubusercontent.com/docker/compose/$(docker-compose --version | awk 'NR==1{print $NF}')/contrib/completion/bash/docker-compose > docker-compose-completion
mv docker-compose-completion /etc/bash_completion.d/docker-compose
