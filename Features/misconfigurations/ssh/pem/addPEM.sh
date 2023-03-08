#!/bin/bash
apk add openssl openssh
sed -i '58 a PermitEmptyPasswords yes' /etc/ssh/sshd_config
