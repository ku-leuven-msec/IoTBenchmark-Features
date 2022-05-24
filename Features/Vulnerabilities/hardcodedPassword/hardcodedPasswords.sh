dlog "- Adding a hardcoded password for the user client"
echo 'client:$6$vOsShJfzJ$nspR/.gahnFFRBL9hrTkWCwr8fCjhkIaEyABvCCpCVL6p1G3dZVEhvmbcOg2Bh1OG.a9ZmKkzwo2V5ZDOin73/' | chpasswd -e

dlog "- Adding a hardcoded password for user manager"
echo 'manager:$6$dY5hO/6B48/9D.66$QHHDlmdkw.CHtzQg.W/e7s8SnGJaJgwVYwKzLu1vB6ZTeKBb2BXj1xc7wJJUl7nFgUXy6AHf/6z63yOPuXBT7/' | chpasswd -e

log "SET Root password"
echo 'root:$6$WQBiS3eMvOMsmsDy$nebw3AB8weP3mqP/1qqcJsN/Xh.CW5S2hsSHMVSxdH5sqEMdJZzzDfmcoBeZeNNh43JqXSquoRES3D4bgxKBy.' |chpasswd -e
