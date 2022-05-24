apk add openrc
rc-update

FILE=/usr/sbin/sshd
if test -f "$FILE"; then
    rc-update add sshd default
fi 

FILE=/usr/sbin/vsftpd
if test -f "$FILE"; then
    rc-update add vsftpd default
fi 

FILE=/usr/sbin/crond
if test -f "$FILE"; then
    rc-update add crond default
fi 