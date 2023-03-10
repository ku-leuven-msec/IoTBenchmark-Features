#!/bin/bash
mkdir -p /opt/dvd/code/c/

URL="${VulnerabilitiesURL}binaryProtection/"
mkdir -p /tmp/c
cd /tmp/c/

wget "${URL}noBinProt" -O BufferOverflowWithoutProtection 

mv /tmp/c/* /opt/dvd/code/c/
chmod -R +x /opt/dvd/code/c/
chmod -R +s /opt/dvd/code/c/

