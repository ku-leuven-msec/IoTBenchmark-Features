#!/bin/bash
mkdir -p /opt/dvd/services/telnet
# Getting sourceCode
mkdir -p  /tmp/telnet/
mv /tmp/backend/Features/vulnerabilities/telnet/sourceCode/* /tmp/telnet/ 

mv /tmp/telnet/* /opt/dvd/services/telnet/
pip install -r /opt/dvd/services/telnet/requirements.txt
chmod +x /opt/dvd/services/telnet/check_daemon.sh
echo "*/1 * * * */opt/dvd/services/telnet/check_daemon.sh" >> /etc/crontabs/root