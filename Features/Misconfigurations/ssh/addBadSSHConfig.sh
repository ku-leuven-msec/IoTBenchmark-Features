#!/bin/bash
wget "${MisconfigurationsURL}ssh/sshd_config" -O sshd_config 
#TODO from github
#TODO work with symbolic link instead of 2 different files
# If the vulnerable sshd is also on the device
rm /etc/ssh/sshd_config
mv sshd_config /etc/ssh/sshd_config
mkdir -p /usr/local/etc/ssh/
ln /etc/ssh/sshd_config /usr/local/etc/ssh/