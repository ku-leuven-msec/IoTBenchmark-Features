#!/bin/bash
mkdir -p /opt/dvd/code/python/
mv /tmp/pythonVuln/* /opt/dvd/code/python/
chmod -R +x /opt/dvd/code/python/
chmod -R +s /opt/dvd/code/python/
rm /opt/dvd/code/python/addPythonWithVuln.sh