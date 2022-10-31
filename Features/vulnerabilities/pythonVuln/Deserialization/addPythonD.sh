#!/bin/bash
pythonURL="${VulnerabilitiesURL}pythonVuln/"
wget "${pythonURL}Deserialization/auth.py" -O Deserialization.py 
mkdir -p /opt/dvd/code/python/
mv ./Deserialization.py  /opt/dvd/code/python/
chmod -R +x /opt/dvd/code/python/
chmod -R +s /opt/dvd/code/python/