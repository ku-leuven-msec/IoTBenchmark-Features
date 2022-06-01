#!/bin/bash
mkdir -p /opt/dvd/services/http
mv /tmp/http/ /opt/dvd/services/
pip install -r /opt/dvd/services/http/requirements.txt 
chmod +x /opt/dvd/services/http/check_daemon.sh
echo "*/1 * * * * /opt/dvd/services/http/check_daemon.sh" >> /etc/crontabs/root