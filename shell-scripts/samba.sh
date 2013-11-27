#!/bin/sh

mv /etc/samba/smb.conf /etc/samba/smb.conf.bkp;
cp /vagrant/conf/smb.conf /etc/samba/smb.conf;

dos2unix /etc/samba/smb.conf;

service smbd restart;
service nmbd restart;
