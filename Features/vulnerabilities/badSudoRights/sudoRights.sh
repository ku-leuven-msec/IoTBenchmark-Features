#!/bin/bash
echo 'client ALL=(root) NOPASSWD: /usr/bin/less /home/manager/*' >> /etc/sudoers
echo "You can read or exploit me" > /home/manager/log.txt
chmod 770 /home/manager/log.txt
echo 'client ALL=(root)  /usr/bin/vi' >> /etc/sudoers
echo 'Defaults secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"' >> /etc/sudoers
echo 'Defaults env_keep += "LD_PRELOAD"' >> /etc/sudoers
echo 'ping -c 1 google.com' > /home/manager/checkNetwork.sh
echo '* * * * * /home/client/script.sh' >> /etc/crontabs/root
echo 'manager ALL=(root) SETENV:/home/manager/checkNetwork.sh' >> /etc/sudoers
