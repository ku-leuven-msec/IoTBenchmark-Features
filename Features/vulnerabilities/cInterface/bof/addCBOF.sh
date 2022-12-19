#!/bin/bash
mkdir -p /opt/dvd/services/vulns/c/

cURL="${VulnerabilitiesURL}cInterface/"
cd /tmp/c/
if [[ $(uname -a | grep "arm") ]] ; then
    wget "${cURL}armv7/BufferOverflow/bof1" -O BufferOverflow 
elif [[ $(uname -a | grep "x86") ]] ; then
    wget "${cURL}x86/BufferOverflow/bof1" -O BufferOverflow 
else
    echo "shouldn't get here"
fi
mv /tmp/c/* /opt/dvd/services/vulns/c/

chmod -R +x /opt/dvd/services/vulns/c/
chmod -R +s /opt/dvd/services/vulns/c/
