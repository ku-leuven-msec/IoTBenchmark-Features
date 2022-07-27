#!/bin/bash
mkdir -p /opt/dvd/code/c/
mv /tmp/c/* /opt/dvd/code/c/

if [[ $(uname -a | grep "arm") ]] ; then
    rm -rf /opt/dvd/code/c/x86
elif [[ $(uname -a | grep "x86") ]] ; then
    rm -rf /opt/dvd/code/c/armv7
else
    echo "shouldn't get here"
fi


