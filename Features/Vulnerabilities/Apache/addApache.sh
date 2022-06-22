apk add apache2
mkdir -p /opt/dvd/services/http
mv /tmp/http/* /opt/dvd/services/http/

mv /opt/dvd/services/http/http.conf /etc/apache2/sites-available/http.conf

rc-service apache2 start