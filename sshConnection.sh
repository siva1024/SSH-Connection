ssh-keygen -t rsa -b 4096
ssh user@hostname mkdir -p .ssh
cat .ssh/id_rsa.pub | ssh user@hostname 'cat >> .ssh/authorized_keys'
ssh user@hostname "chmod 700 .ssh; chmod 640 .ssh/authorized_keys"

# Disable password authentication "/etc/ssh/sshd_config"
#PasswordAuthentication no
