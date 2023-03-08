#!/bin/bash
apk update
apk add vsftpd
FILE=/sbin/openrc
if test -f "$FILE"; then
    rc-update add vsftpd default
fi 