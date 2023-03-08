#!/bin/bash
apk add openssl openssh
sed -i '24 a Ciphers 3des-cbc' /etc/ssh/sshd_config