#!/bin/bash
apk add busybox-extras
wget "https://raw.githubusercontent.com/DairodR/Benchmark-Repo-Features/develop/Features/resources/telnet/telnetd" -O telnetd
mv ./telnetd /etc/init.d/
chmod +x /etc/init.d/telnetd
# Warning openrc needed!
rc-update add telnetd default