#!/bin/bash
wget "${MisconfigurationsURL}vsftp/vsftpd.conf" #TODO from github
apk add vsftpd
mkdir -p /etc/vsftpd/
mv vsftpd.conf /etc/vsftpd/vsftpd.conf