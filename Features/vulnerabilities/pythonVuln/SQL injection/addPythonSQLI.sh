#!/bin/bash
pythonURL="${VulnerabilitiesURL}pythonVuln/"
wget "${pythonURL}SQLInjection/sqlInjection.py" -O SQLInjection.py 
wget "${pythonURL}SQLInjection/login.db" -O login.db
mkdir -p /opt/dvd/code/python/
mv ./SQLInjection.py /opt/dvd/code/python/
mv ./login.db /opt/dvd/code/python/
chmod -R +x /opt/dvd/code/python/
chmod -R +s /opt/dvd/code/python/