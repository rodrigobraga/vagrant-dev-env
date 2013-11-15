#!/bin/sh

cp /vagrant/bin/common-gen-key.sh /usr/local/bin/
cp /vagrant/bin/bitbucket-key.sh /usr/local/bin/
cp /vagrant/bin/github-key.sh /usr/local/bin/
cp /vagrant/bin/environment.sh /usr/local/bin/

chmod +x /usr/local/bin/environment.sh /usr/local/bin/common-gen-key.sh /usr/local/bin/github-key.sh /usr/local/bin/bitbucket-key.sh;

echo " ******************************************************************"
echo " ******************************************************************"
echo " **                                                              **"
echo " ** setup your key [1] and prepare environment [2]               **"
echo " **                                                              **"
echo " **                                                              **"
echo " ** [1] github-key.sh or bitbucket-key.sh                        **"
echo " ** [2] run 'environment.sh repo1 repo2' as vagrant user         **"
echo " **                                                              **"
echo " ******************************************************************"
echo " ******************************************************************"
