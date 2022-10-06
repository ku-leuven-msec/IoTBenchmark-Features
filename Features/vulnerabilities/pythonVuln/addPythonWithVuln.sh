#!/bin/bash
mkdir -p /opt/dvd/code/python/
mkdir -p /opt/dvd/services/vulns/python/
mv /tmp/pythonVuln/interface/* /opt/dvd/services/vulns/python/
mv /tmp/pythonVuln/* /opt/dvd/code/python/
chmod -R +x /opt/dvd/code/python/
chmod -R +s /opt/dvd/code/python/
chmod -R +x /opt/dvd/services/vulns/python/
chmod -R +s /opt/dvd/services/vulns/python/
rm /opt/dvd/code/python/addPythonWithVuln.sh