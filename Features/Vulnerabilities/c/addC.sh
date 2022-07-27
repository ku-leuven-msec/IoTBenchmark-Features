#!/bin/bash
mkdir -p /opt/dvd/code/c/
mv /tmp/c/* /opt/dvd/code/c/

if [[ $(uname -a | grep "arm") ]] ; then
    rm -rf /opt/dvd/code/c/x86
    chmod -R +x /opt/dvd/code/c/armv7
    chmod -R +s /opt/dvd/code/c/armv7
elif [[ $(uname -a | grep "x86") ]] ; then
    rm -rf /opt/dvd/code/c/armv7
else
    echo "shouldn't get here"
fi


