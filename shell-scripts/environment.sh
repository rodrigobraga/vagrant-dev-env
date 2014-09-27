#!/bin/sh

for f in "bitbucket-key.sh" "common-gen-key.sh" "environment.sh" "github-key.sh"
do
    cp /vagrant/bin/$f /usr/local/bin/
    dos2unix /usr/local/bin/$f
    chmod +x /usr/local/bin/$f
done

# backup and update Samba conf
mv /etc/samba/smb.conf /etc/samba/smb.backup.conf
cp /vagrant/conf/smb.conf /etc/samba/smb.conf
dos2unix /etc/samba/smb.conf

# git
git config --global user.email "rodrigobraga@msn.com"
git config --global user.name "Rodrigo Braga"

echo " ******************************************************************"
echo " ******************************************************************"
echo " **                                                              **"
echo " ** run 'github-key.sh' or 'bitbucket-key.sh' as vagrant user to **"
echo " ** setup your SSH Keys and go ahead                             **"
echo " **                                                              **"
echo " **                                                              **"
echo " ******************************************************************"
echo " ******************************************************************"
