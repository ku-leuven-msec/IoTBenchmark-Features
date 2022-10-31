#!/bin/bash
pythonURL="${VulnerabilitiesURL}pythonVuln/"
wget "${pythonURL}PathTraversal/pathTraversal.py" -O PathTraversal.py 
mkdir -p /opt/dvd/code/python/
mv ./PathTraversal.py  /opt/dvd/code/python/
chmod -R +x /opt/dvd/code/python/
chmod -R +s /opt/dvd/code/python/