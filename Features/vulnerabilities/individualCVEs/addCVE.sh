#!/bin/bash
cd /tmp
wget https://github.com/HardySimpson/zlog/archive/refs/tags/1.2.15.tar.gz
tar -zxvf 1.2.15.tar.gz
cd zlog-1.2.15
make PREFIX=/usr/local/
make PREFIX=/usr/local/ install
# CVE-2021-43521

apk del mosquitto
apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.10/main/ mosquitto=1.6.8-r1
rc-update add mosquitto default

apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.10/main/ opensmtpd=6.0.3p1-r3
rc-update add smtpd default

apk del sudo
apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.5/main/ sudo=1.8.19_p1-r0