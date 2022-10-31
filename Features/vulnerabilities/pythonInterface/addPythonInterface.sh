#!/bin/bash
mkdir -p /opt/dvd/services/vulns/python/
pythonURL="${VulnerabilitiesURL}pythonInterface/"
cd /tmp/python/
# Normal python files
wget "${pythonURL}CommandInjection/vulnerablepython.py" -O CommandInjection.py 
wget "${pythonURL}Deserialization/auth.py" -O Deserialization.py 
wget "${pythonURL}PathTraversal/pathTraversal.py" -O PathTraversal.py 
wget "${pythonURL}SQLInjection/sqlInjection.py" -O SQLInjection.py 
wget "${pythonURL}SQLInjection/login.db" -O login.db
mv /tmp/pythonVuln/* /opt/dvd/services/vulns/python/
chmod -R +x /opt/dvd/services/vulns/python/
chmod -R +s /opt/dvd/services/vulns/python/
rm /opt/dvd/code/python/addPythonWithVuln.sh