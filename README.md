# SSH-Connection
below are the commands that are to be run in a hostmeachine to establish ssh connection

## ssh-keygen -t rsa
## ssh user@hostname mkdir -p .ssh
## cat .ssh/id_rsa.pub | ssh user@hostname 'cat >> .ssh/authorized_keys'
## ssh user@hostname "chmod 700 .ssh; chmod 640 .ssh/authorized_keys"
