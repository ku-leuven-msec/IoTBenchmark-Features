#!/bin/bash
mkdir -p /opt/dvd/code/python/
mkdir -p /opt/dvd/vulns/python/
mv /tmp/pythonVuln/interface/* /opt/dvd/vulns/python/
mv /tmp/pythonVuln/* /opt/dvd/code/python/
rm -rf /tmp/pythonVuln/interface/
chmod -R +x /opt/dvd/code/python/
chmod -R +s /opt/dvd/code/python/
chmod -R +x /opt/dvd/vulns/python/
chmod -R +s /opt/dvd/vulns/python/
rm /opt/dvd/code/python/addPythonWithVuln.sh