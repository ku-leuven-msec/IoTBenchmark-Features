mkdir -p /opt/dvd/services/coap
cp /tmp/coap/ /opt/dvd/services/coap/
pip install -r /opt/dvd/services/coap/requirements.txt

chmod +x /opt/dvd/services/coap/check_daemon.sh
echo "*/1 * * * * /opt/dvd/services/coap/check_daemon.sh" >> /etc/crontabs/root