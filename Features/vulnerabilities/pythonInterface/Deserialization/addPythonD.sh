#!/bin/bash
pythonURL="${VulnerabilitiesURL}pythonInterface/"
wget "${pythonURL}Deserialization/deserialization.py" -O Deserialization.py 
mkdir -p /opt/dvd/services/vulns/python/
mv ./Deserialization.py  /opt/dvd/services/vulns/python/
chmod -R +x /opt/dvd/services/vulns/python/
chmod -R +s /opt/dvd/services/vulns/python/
