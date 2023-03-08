#!/bin/bash
sed -i '32 a PermitRootLogin yes' /etc/ssh/sshd_config
FILE=/usr/sbin/sshd
if test -f "$FILE"; then
    mkdir -p /usr/local/etc/
    rm -rf /usr/local/etc/*
    ln /etc/ssh/* /usr/local/etc/
fi 