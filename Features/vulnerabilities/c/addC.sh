#!/bin/bash
mkdir -p /opt/dvd/code/c/

cURL="${VulnerabilitiesURL}c/"
cd /tmp/c/

if [[ $(uname -a | grep "arm") ]] ; then
    wget "${cURL}armv7/CommandInjection/bof1" -O CommandInjection 
    wget "${cURL}armv7/CommandInjection/vulnerable" -O CommandInjection2
    wget "${cURL}armv7/FormatString/vuln" -O FormatString 
    wget "${cURL}armv7/PathTraversal/pathTraversal_armv7" -O PathTraversal 
    wget "${cURL}armv7/SQLInjection/sqlInjection_armv7" -O SQLInjection 
    wget "${cURL}armv7/SQLInjection/login.db" -O login.db 
    wget "${cURL}armv7/MutipleCVulns/damnvuln" -O Vulnerable 

    
elif [[ $(uname -a | grep "x86") ]] ; then
    wget "${cURL}x86/CommandInjection/bof1" -O CommandInjection 
    wget "${cURL}x86/CommandInjection/vulnerable" -O CommandInjection2
    wget "${cURL}x86/CommandInjection/vulnerableC" -O CommandInjection3
    wget "${cURL}x86/CommandInjection/vulnerablepython.pyc" -O CythonCommandInjection
    wget "${cURL}x86/FormatString/vuln" -O FormatString 
    wget "${cURL}x86/PathTraversal/pathTraversal" -O PathTraversal 
    wget "${cURL}x86/SQLInjection/sqlInjection" -O SQLInjection 
    wget "${cURL}x86/SQLInjection/login.db" -O login.db 
    wget "${cURL}x86/MutipleCVulns/damnvuln" -O Vulnerable 
    wget "${cURL}x86/MutipleCVulns/damnvuln2" -O Vulnerable2    
else
    echo "shouldn't get here"
fi
mv /tmp/c/* /opt/dvd/code/c/

chmod -R +x /opt/dvd/code/c/
chmod -R +s /opt/dvd/code/c/

