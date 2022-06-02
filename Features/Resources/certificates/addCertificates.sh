wget "${ResourcesURL}certificates/client.cnf" _O client.cnf
wget "${ResourcesURL}certificates/root.cnf" _O root.cnf
wget "${ResourcesURL}certificates/server.cnf" _O server.cnf

#Create selfisgned CA Certificate
openssl req -x509 -new -keyout ./cert/root.key -out ./cert/root.cer -config root.cnf
#Creating client key pair & cert request
openssl req -nodes -new -keyout ./cert/client.key -out ./tmp/client.csr -config client.cnf
#generate client certifacates
openssl x509 -req -in ./tmp/client.csr -CA ./cert/root.cer -CAkey ./cert/root.key -out ./cert/client.cer -CAcreateserial -days 365 -extfile client.cnf -extensions x509_ext
#Ceeate pkc12 keystore for android
openssl pkcs12 -export -inkey ./cert/client.key  -in ./cert/client.cer -certfile ./cert/root.cer -out ./cert/client.pfx

mkdir -p /etc/credentials
mv ./root.cer /etc/credentials/
mv ./clients.pem /etc/credentials/

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


#Create server key pair & certificate request
openssl req -nodes -new -keyout $NAME.key -out ./tmp/$NAME.csr -config ./tmp/$NAME.cnf
#Generate server certificate
openssl x509 -days 3650 -req -in ./tmp/$NAME.csr -CA "$CFG_PATH/cert/root.cer" -passin pass:test -CAkey "$CFG_PATH/cert/root.key" -CAcreateserial -out $NAME.cer -extfile ./tmp/$NAME.cnf -extensions x509_ext

