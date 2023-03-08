#!/bin/bash
mkdir -p /opt/dvd/code/c/

cURL="${VulnerabilitiesURL}c/"
mkdir -p /tmp/c
cd /tmp/c/
if [[ $(uname -a | grep "arm") ]] ; then
    wget "${cURL}armv7/FormatString/vuln" -O FormatString 
elif [[ $(uname -a | grep "x86") ]] ; then
    wget "${cURL}x86/FormatString/vuln" -O FormatString 
else
    echo "shouldn't get here"
fi
mv /tmp/c/* /opt/dvd/code/c/
chmod -R +x /opt/dvd/code/c/
chmod -R +s /opt/dvd/code/c/

