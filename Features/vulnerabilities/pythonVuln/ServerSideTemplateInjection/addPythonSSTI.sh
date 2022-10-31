#!/bin/bash
pythonURL="${VulnerabilitiesURL}pythonVuln/"
wget "${pythonURL}ServerSideTemplateInjection/test.py" -O SSTI.py 
mkdir -p /opt/dvd/code/python/
mv ./SSTI.py /opt/dvd/code/python/
chmod -R +x /opt/dvd/code/python/
chmod -R +s /opt/dvd/code/python/