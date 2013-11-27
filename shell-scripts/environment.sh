#!/bin/sh

for f in "bitbucket-key.sh" "common-gen-key.sh" "environment.sh" "github-key.sh"
do
    cp /vagrant/bin/$f /usr/local/bin/
    dos2unix /usr/local/bin/$f
    chmod +x /usr/local/bin/$f
done

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
