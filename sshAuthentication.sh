# Go to the file /etc/ssh/sshd_config and edit the below line

#PasswordAuthentication no

echo "######################################################"
echo "Checking that the password Authentication is disabled"

if grep -Fxq "PasswordAuthentication no" /etc/ssh/sshd_config
then
    echo "The configuration exists"
else
    echo "the configuration is not set, updating the configuration"
    sudo sed -i 's/#PasswordAuthentication no/PasswordAuthentication no/' /etc/ssh/sshd_config
fi
echo "Done"
echo " "