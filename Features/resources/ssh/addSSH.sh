#!/bin/bash
apk add openssl openssh
ln /etc/ssh/* /usr/local/
FILE=/sbin/openrc
if test -f "$FILE"; then
    rc-update add sshd default
fi 