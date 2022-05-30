cd /tmp
wget https://raw.githubusercontent.com/DairodR/Benchmark-Repo-Features/main/Features/Misconfigurations/ssh/sshd_config?token=GHSAT0AAAAAABUNGS6YTH3KNYOLORHUFHWIYUQYU5A #TODO from github

#TODO work with symbolic link instead of 2 different files
# If the vulnerable sshd is also on the device
FILE=/usr/local/sbin/sshd
if test -f "$FILE"; then
    mv sshd_conf /usr/local/etc/sshd_conf
    /usr/local/sbin/sshd
else
    mv sshd_conf /etc/ssh/sshd_conf
    sshd
fi


