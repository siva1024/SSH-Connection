#!/usr/bin/expect
#ssh-keygen -t rsa

spawn ssh MyUserName@192.168.20.20
expect "password"
send "MyPassword\r"
interact


read -p "Enter the Hostname: "  hostname

read -p "Enter the User: "  user
echo "Welcome $hostname!"


ssh $user@$hostname mkdir -p .ssh

cat .ssh/id_rsa.pub | ssh $user@$hostname 'cat >> .ssh/authorized_keys'
ssh $user@$hostname "chmod 700 .ssh; chmod 640 .ssh/authorized_keys"
