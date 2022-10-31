#!/bin/bash
pythonURL="${VulnerabilitiesURL}pythonVuln/"
wget "${pythonURL}CommandInjection/vulnerablepython.py" -O CommandInjection.py 
mkdir -p /opt/dvd/code/python/
mv ./CommandInjection.py  /opt/dvd/code/python/
chmod -R +x /opt/dvd/code/python/
chmod -R +s /opt/dvd/code/python/
