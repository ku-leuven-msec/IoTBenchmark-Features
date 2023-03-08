#!/bin/bash
apk add openssl openssh
sed -i '32 a PermitRootLogin yes' /etc/ssh/sshd_config
