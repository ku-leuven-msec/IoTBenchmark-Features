#!/bin/bash
wget "${MisconfigurationsURL}ssh/sshd_config" -O sshd_config 
# If the vulnerable sshd is also on the device
rm /etc/ssh/sshd_config
mv sshd_config /etc/ssh/sshd_config
mkdir -p /usr/local/etc/
rm -rf /usr/local/etc/*
ln /etc/ssh/* /usr/local/etc/