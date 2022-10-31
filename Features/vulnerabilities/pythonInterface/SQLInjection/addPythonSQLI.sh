#!/bin/bash
pythonURL="${VulnerabilitiesURL}pythonInterface/"
wget "${pythonURL}SQLInjection/sqlInjection.py" -O SQLInjection.py 
wget "${pythonURL}SQLInjection/login.db" -O login.db
mkdir -p /opt/dvd/services/vulns/python/
mv ./SQLInjection.py /opt/dvd/services/vulns/python/
mv ./login.db /opt/dvd/services/vulns/python/
chmod -R +x /opt/dvd/services/vulns/python/
chmod -R +s /opt/dvd/services/vulns/python/
