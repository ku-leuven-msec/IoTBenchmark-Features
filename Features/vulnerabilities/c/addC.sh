#!/bin/bash
mkdir -p /opt/dvd/code/c/
mkdir -p /opt/dvd/services/vulns/c/

mv /tmp/c/* /opt/dvd/code/c/

if [[ $(uname -a | grep "arm") ]] ; then
    rm -rf /opt/dvd/code/c/x86
    chmod -R +x /opt/dvd/code/c/armv7
    chmod -R +s /opt/dvd/code/c/armv7
    
    cp /opt/dvd/code/c/armv7/interface/* /opt/dvd/services/vulns/c/
    #rm -rf /opt/dvd/code/c/armv7/interface
elif [[ $(uname -a | grep "x86") ]] ; then
    rm -rf /opt/dvd/code/c/armv7
    chmod -R +x /opt/dvd/code/c/x86
    chmod -R +s /opt/dvd/code/c/x86
    
    cp /opt/dvd/code/c/x86/interface/* /opt/dvd/services/vulns/c/
    #rm -rf /opt/dvd/code/c/x86/interface
else
    echo "shouldn't get here"
fi


