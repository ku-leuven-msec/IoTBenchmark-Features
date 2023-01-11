#!/bin/bash
mkdir -p /opt/dvd/code/python/
pythonURL="${VulnerabilitiesURL}pythonVuln/"
cd /tmp/pythonVuln/
# Normal python files
wget "${pythonURL}CommandInjection/vulnerablepython.py" -O CommandInjection.py 
wget "${pythonURL}Deserialization/auth.py" -O Deserialization.py 
wget "${pythonURL}PathTraversal/pathTraversal.py" -O PathTraversal.py 
wget "${pythonURL}SQLInjection/sqlInjection.py" -O SQLInjection.py 
wget "${pythonURL}SQLInjection/login.db" -O login.db
wget "${pythonURL}ServerSideTemplateInjection/test.py" -O SSTI.py 
mv /tmp/pythonVuln/* /opt/dvd/code/python/
chmod -R +x /opt/dvd/code/python/
chmod -R +s /opt/dvd/code/python/
rm /opt/dvd/code/python/addPythonWithVuln.sh