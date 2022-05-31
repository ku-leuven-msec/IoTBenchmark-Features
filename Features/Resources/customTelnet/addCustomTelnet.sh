#!/bin/bash
mkdir -p /opt/dvd/services/
mv /tmp/telnet/ /opt/dvd/services/
pip install -r /opt/dvd/services/telnet/requirements.txt
chmod +x /opt/dvd/services/telnet/check_daemon.sh
echo "*/1 * * * */opt/dvd/services/telnet/check_daemon.sh" >> /etc/crontabs/root