#!/bin/bash
apk add python3 py3-pip
python3 -m pip install --trusted-host pypi.python.org --trusted-host files.pythonhosted.org --trusted-host pypi.org --upgrade pip
/usr/bin/pip config set global.trusted-host "pypi.org pypi.python.org files.pythonhosted.org"