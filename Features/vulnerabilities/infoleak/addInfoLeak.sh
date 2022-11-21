#!/bin/bash
infocsv="${VulnerabilitiesURL}infoleak/csv/"
wget "${infocsv}.info.csv" -O .info.csv
mv .info.csv /home/manager/

infodb="${VulnerabilitiesURL}infoleak/db/"
wget "${infodb}login.db" -O login.db
mv ./login.db /home/manager/

infoxlsx="${VulnerabilitiesURL}infoleak/xlsx/"
wget "${infoxlsx}.info.xlsx" -O .info.xlsx
mv .info.xlsx /home/manager/

echo "admin@iot.com:test12345" >> /home/manager/.info.txt
echo "client:devpass">> /home/manager/.info.txt
echo "manager:password1">> /home/manager/.info.txt

echo "admin@iot.com:c06db68e819be6ec3d26c6038d8e8d1f" >> /home/manager/.info.txt
echo "client:dc067f8a150df19383bc33d7ac9032f7" >> /home/manager/.info.txt
echo "manager:7c6a180b36896a0a8c02787eeafb0e4c" >> /home/manager/.info.txt

echo "c06db68e819be6ec3d26c6038d8e8d1f" >> /home/manager/.info.txt
echo "dc067f8a150df19383bc33d7ac9032f7" >> /home/manager/.info.txt
echo "7c6a180b36896a0a8c02787eeafb0e4c" >> /home/manager/.info.txt

echo "username=admin@iot.com&password=test12345" >> /home/manager/.info.txt
echo "username=client&password=devpass">> /home/manager/.info.txt
echo "username=manager&password=password1">> /home/manager/.info.txt
