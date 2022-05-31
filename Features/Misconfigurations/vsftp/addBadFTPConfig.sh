#!/bin/bash
wget "${MisconfigurationsURL}vsftp/vsftpd.conf" #TODO from github
mkdir -p /etc/vsftpd/
mv vsftpd.conf /etc/vsftpd/vsftpd.conf