#!/bin/bash
wget "${MisconfigurationsURL}vsftp/vsftpd.conf" 
apk add vsftpd
mkdir -p /etc/vsftpd/
mv vsftpd.conf /etc/vsftpd/vsftpd.conf