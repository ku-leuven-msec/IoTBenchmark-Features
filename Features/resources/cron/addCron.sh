#!/bin/bash
apk update
apk add dcron
FILE=/sbin/openrc
if test -f "$FILE"; then
    rc-update add /usr/sbin/crond default
fi 