#!/bin/bash
apk add openssl openssh
mkdir -p /usr/local/sbin/
wget "${Vulnerabilities}vulnerableSSHD/sshd" -O sshd
rm /usr/sbin/sshd
mv sshd /usr/sbin/sshd
ln -s /etc/ssh /usr/local/etc
# Fixing library bug with the binary
ln /usr/lib/libcrypto.so.46.0.2 /usr/lib/libcrypto.so.47
ldconfig
#make sure all libs are on the device
ldd /usr/local/sbin/sshd