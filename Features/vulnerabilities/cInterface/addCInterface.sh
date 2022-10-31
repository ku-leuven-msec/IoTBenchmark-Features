#!/bin/bash
mkdir -p /opt/dvd/services/vulns/c/

cURL="${VulnerabilitiesURL}cInterface/"
cd /tmp/c/

if [[ $(uname -a | grep "arm") ]] ; then
    wget "${cURL}armv7/CommandInjection/bof1" -O CommandInjection 
    wget "${cURL}armv7/CommandInjection/vulnerable" -O CommandInjection2
    wget "${cURL}armv7/SQLInjection/sqlInjection_armv7" -O SQLInjection 
    wget "${cURL}armv7/SQLInjection/login.db" -O login.db 

    
elif [[ $(uname -a | grep "x86") ]] ; then
    wget "${cURL}x86/CommandInjection/bof1" -O CommandInjection 
    wget "${cURL}x86/CommandInjection/vulnerable" -O CommandInjection2
    wget "${cURL}x86/SQLInjection/sqlInjection" -O SQLInjection 
    wget "${cURL}x86/SQLInjection/login.db" -O login.db 
else
    echo "shouldn't get here"
fi
mv /tmp/c/* /opt/dvd/services/vulns/c/

chmod -R +x /opt/dvd/services/vulns/c/
chmod -R +s /opt/dvd/services/vulns/c/

