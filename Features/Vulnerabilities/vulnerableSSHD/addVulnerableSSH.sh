mkdir -p /usr/local/sbin/
cd /usr/local/sbin
wget sshd #TODO from github
cd /usr/local/
wget sshd_etc  #TODO from github and testing..

apk update
apk upgrade

# Fixing library bug with the binary
cd /usr/lib
ln libcrypto.so.46.0.2 libcrypto.so.47
ldconfig

#make sure all libs are on the device
ldd /usr/local/sbin/sshd

# Killing current sshd, and starting the vulnerable one
kill $(ps aux | grep '*sshd*' | awk '{print $1}')
/usr/local/sbin/sshd

