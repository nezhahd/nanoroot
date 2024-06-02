{

echo "设置你的ROOT密码"
sudo -i
passwd
sed -i 's/^\s*#\?\s*PermitRootLogin.*/PermitRootLogin yes/g' /etc/ssh/sshd_config;
sed -i 's/^\s*#\?\s*PasswordAuthentication.*/PasswordAuthentication yes/g' /etc/ssh/sshd_config;
rm -rf /etc/ssh/sshd_config.d/* /etc/ssh/ssh_config.d/*
restart_ssh
echo -e "${lv}ROOT登录设置完毕！${bai}"

}
