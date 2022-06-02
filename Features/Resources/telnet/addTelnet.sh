#!/bin/bash
apk add busybox-extras
wget "${ResourcesURL}telnet/telnetd" -O telnetd
mv ./telnetd /etc/init.d/
chmod +x /etc/init.d/telnetd
# Warning openrc needed!
rc-update add telnetd default