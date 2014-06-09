#!/bin/sh

for f in "bitbucket-key.sh" "common-gen-key.sh" "environment.sh" "github-key.sh" "docker.sh"
do
    cp /vagrant/bin/$f /usr/local/bin/
    dos2unix /usr/local/bin/$f
    chmod +x /usr/local/bin/$f
done

# create 'default' dir to projects
mkdir /home/vagrant/repos

echo " ******************************************************************"
echo " ******************************************************************"
echo " **                                                              **"
echo " ** setup your keys [1], install docker [2] and go ahead         **"
echo " **                                                              **"
echo " **                                                              **"
echo " ** [1] run 'github-key.sh' or 'bitbucket-key.sh' as vagrant     **"
echo " ** [2] run 'docker.sh' as vagrant                               **"
echo " **                                                              **"
echo " ******************************************************************"
echo " ******************************************************************"
