#!/bin/bash
apk add busybox-extras
wget "${Resources}telnet/telnetd"
chmod +x ./telnetd
mv ./telnetd /etc/init.d/
# Warning openrc needed!
rc-update add telnetd default