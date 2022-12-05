#!/bin/bash
apk add openrc
rc-update
/sbin/openrc
mkdir -p /run/openrc/
touch /run/openrc/softlevel
FILE=/usr/sbin/sshd
if test -f "$FILE"; then
    rc-update add sshd default
fi 
FILE=/usr/sbin/vsftpd
if test -f "$FILE"; then
    rc-update add vsftpd default
fi 
FILE=/usr/sbin/crond
if test -f "$FILE"; then
    rc-update add crond default
fi 
FILE=/usr/sbin/mosquitto
if test -f "$FILE"; then
    rc-update add mosquitto default
fi 