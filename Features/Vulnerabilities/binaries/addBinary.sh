#!/bin/bash
mkdir -p /opt/dvd/code/binary/
mv /tmp/binary/* /opt/dvd/code/binary/

if [[ $(uname -a | grep "arm") ]] ; then
    rm -rf /opt/dvd/code/binary/x86
elif [[ $(uname -a | grep "x86") ]] ; then
    rm -rf /opt/dvd/code/binary/armv7"
else
    echo "shouldn't get here"
fi


