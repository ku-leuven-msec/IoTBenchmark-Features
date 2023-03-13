#!/bin/bash
apk add dcron
FILE=/sbin/openrc
rc-update add /usr/sbin/crond default
