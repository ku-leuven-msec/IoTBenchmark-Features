#!/bin/bash
apk add openssl openssh libressl-dev
mkdir -p /usr/local/sbin/
wget "${VulnerabilitiesURL}vulnerableSSHD/sshd" -O sshd
chmod +x sshd
rm /usr/sbin/sshd
mv sshd /usr/sbin/
# Fixing library bug with the binary
ln /usr/lib/libcrypto.so.46 /usr/lib/libcrypto.so.47
#make sure all libs are on the device
#ldd /usr/local/sbin/sshd