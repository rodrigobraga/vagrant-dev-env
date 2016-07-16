#!/bin/sh

# provides scripts to create keys and connect with Github/Bitbucket
for f in "common-gen-key.sh" "github-key.sh" "bitbucket-key.sh"
do
    cp /tmp/vagrant/bin/$f /usr/local/bin/
    dos2unix /usr/local/bin/$f
    chmod +x /usr/local/bin/$f
done

# backup and update samba conf
mv /etc/samba/smb.conf /etc/samba/smb.conf.backup
cp /tmp/vagrant/conf/smb.conf /etc/samba/smb.conf
dos2unix /etc/samba/smb.conf

# set datetime
echo 'America/Fortaleza' > /etc/timezone
dpkg-reconfigure --frontend noninteractive tzdata

# copy dotfiles
cp /tmp/vagrant/dotfiles/.* /home/ubuntu

for f in ".bash_profile" ".bashrc" ".gitconfig" ".screenrc" ".vimrc"
do
    dos2unix /home/ubuntu/$f
done

echo " **************************************************************"
echo " **************************************************************"
echo " **                                                          **"
echo " ** copy your keys or generate new running github-key.sh or  **"
echo " ** bitbucket-key.sh as vagrant user to setup SSH Keys       **"
echo " **                                                          **"
echo " **************************************************************"
echo " **************************************************************"
