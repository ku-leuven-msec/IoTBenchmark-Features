#!/bin/bash
apk update
apk add busybox-initscripts
FILE=/sbin/openrc
if test -f "$FILE"; then
    rc-update add crond default
fi 