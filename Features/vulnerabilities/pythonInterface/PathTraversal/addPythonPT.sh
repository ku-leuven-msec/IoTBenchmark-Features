#!/bin/bash
pythonURL="${VulnerabilitiesURL}pythonInterface/"
wget "${pythonURL}PathTraversal/PathTraversal.py" -O PathTraversal.py 
mkdir -p /opt/dvd/services/vulns/python/
mv ./PathTraversal.py  /opt/dvd/services/vulns/python/
chmod -R +x /opt/dvd/services/vulns/python/
chmod -R +s /opt/dvd/services/vulns/python/
