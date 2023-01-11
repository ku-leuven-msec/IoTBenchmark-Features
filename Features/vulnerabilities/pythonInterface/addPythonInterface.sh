#!/bin/bash
mkdir -p /opt/dvd/services/vulns/python/
pythonURL="${VulnerabilitiesURL}pythonInterface/"
cd /tmp/python/
# Normal python files
wget "${pythonURL}CommandInjection/commandInjection.py" -O CommandInjection.py 
wget "${pythonURL}Deserialization/deserialization.py" -O Deserialization.py 
wget "${pythonURL}PathTraversal/PathTraversal.py" -O PathTraversal.py 
wget "${pythonURL}SQLInjection/sqlInjection.py" -O SQLInjection.py 
wget "https://github.com/DairodR/Benchmark-Repo-Features/blob/develop/Features/vulnerabilities/pythonInterface/SQLInjection/login.db" -O login.db
mv /tmp/pythonVuln/* /opt/dvd/services/vulns/python/
chmod -R +x /opt/dvd/services/vulns/python/
chmod -R +s /opt/dvd/services/vulns/python/
rm /opt/dvd/services/vulns/python/addPythonInterface.sh