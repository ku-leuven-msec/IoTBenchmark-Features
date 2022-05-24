dlog "- copy root.cer to path in TrustedUserCAKeys found in sshd_config"4
cd /tmp
wget Certs #TODO!!!!!!!!!!


mkdir -p /etc/credentials
mv ./root.cer /etc/credentials/
mv ./clients.pem /etc/credentials/

dlog "- Adding TrustedUserCAKeys to sshd_config"
echo "TrustedUserCAKeys /etc/credentials/root.cer" >> /etc/ssh/sshd_config

dlog "- Create Server Certificates"
#Get IP
local ip=`ifconfig eth0 2>/dev/null|awk '/inet addr:/ {print $2}'|sed 's/addr://'`
if [ -z "$ip" ]; then
ip=`ifconfig eth0 2>/dev/null|awk '/inet / {print $2}'|sed 's/addr://'`
fi
echo $ip
IP=$(get_current_ip)
DNS="DVD"

cd /etc/credentials
CFG_PATH="/tmp"

mkdir tmp
NAME="server"

cat "$CFG_PATH/server.cnf" > "./tmp/$NAME.cnf"
echo "DNS.2 = $DNS">>"./tmp/$NAME.cnf"
echo "IP.1 = 127.0.0.1" >> "./tmp/$NAME.cnf" 
echo "IP.2 = $IP" >> "./tmp/$NAME.cnf" 

echo "** Setup certificates for server $NAME**"
echo ""

echo "Create server key pair & certificate request:"
openssl req -nodes -new -keyout $NAME.key -out ./tmp/$NAME.csr -config ./tmp/$NAME.cnf
echo ""
echo "Generate server certificate"
openssl x509 -days 3650 -req -in ./tmp/$NAME.csr -CA "$CFG_PATH/cert/root.cer" -passin pass:test -CAkey "$CFG_PATH/cert/root.key" -CAcreateserial -out $NAME.cer -extfile ./tmp/$NAME.cnf -extensions x509_ext
echo ""

rm -r tmp
cd -

