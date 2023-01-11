#!/bin/bash
wget "https://raw.githubusercontent.com/DairodR/Benchmark-Repo-Features/develop/Features/misconfigurations/vsftp/vsftpd.conf" 
apk add vsftpd
mkdir -p /etc/vsftpd/
mv vsftpd.conf /etc/vsftpd/vsftpd.conf