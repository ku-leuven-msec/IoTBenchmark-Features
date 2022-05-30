wget https://raw.githubusercontent.com/DairodR/Benchmark-Repo-Features/main/Features/Misconfigurations/ssh/addBadSSHConfig.sh -O sshd_config 
#TODO from github
#TODO work with symbolic link instead of 2 different files
# If the vulnerable sshd is also on the device
mv sshd_config /etc/ssh/sshd_config
mkdir -p /usr/local/etc/ssh/
ln /etc/ssh/sshd_config /usr/local/etc/ssh/