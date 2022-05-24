dlog "- Adding sudo rights for the user client"
echo 'client ALL=(root) NOPASSWD: /usr/bin/less /home/manager/*' >> /etc/sudoers
echo "You can read me" > /home/manager/log.txt
chmod 770 /home/manager/log.txt