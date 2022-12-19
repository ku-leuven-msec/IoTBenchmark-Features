#!/bin/bash
mkdir -p /opt/dvd/code/c/

cURL="${VulnerabilitiesURL}c/"
cd /tmp/c/
if [[ $(uname -a | grep "arm") ]] ; then
    wget "${cURL}armv7/CommandInjection/vulnerable" -O CommandInjection2
elif [[ $(uname -a | grep "x86") ]] ; then
    wget "${cURL}x86/CommandInjection/vulnerable" -O CommandInjection2
    wget "${cURL}x86/CommandInjection/vulnerableC" -O CommandInjection3
else
    echo "shouldn't get here"
fi
mv /tmp/c/* /opt/dvd/code/c/
chmod -R +x /opt/dvd/code/c/
chmod -R +s /opt/dvd/code/c/

