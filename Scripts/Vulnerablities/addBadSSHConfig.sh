cd /tmp
wget sshd_conf #TODO from github

# If the vulnerable sshd is also on the device
FILE=/usr/local/sbin/sshd
if test -f "$FILE"; then
    mv sshd_conf /usr/local/etc/sshd_conf
    /usr/local/sbin/sshd
else
    mv sshd_conf /etc/ssh/sshd_conf
    sshd
fi


