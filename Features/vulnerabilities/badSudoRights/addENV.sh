#!/bin/bash
echo 'ping -c 1 google.com' > /home/manager/checkNetwork.sh
echo '* * * * * /home/client/script.sh' >> /etc/crontabs/root
echo 'manager ALL=(root) SETENV:/home/manager/checkNetwork.sh' >> /etc/sudoers
