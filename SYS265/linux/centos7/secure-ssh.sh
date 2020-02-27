# Creates new ssh user

NewUser="$1"

sudo useradd -m -d /home/${NewUser} -s /bin/bash ${NewUser}

sudo mkdir /home/${NewUser}/.ssh

# Adds SSH Public Key from local repo

sudo cp SYS265/linux/public-keys/id_rsa.pub /home/${NewUser}/.ssh/authorized_keys
sudo chmod 700 /home/${NewUser}/.ssh
sudo chmod 600 /home/${NewUser}/.ssh/authorized_keys
sudo chown -R ${NewUser}:${NewUser} /home/${NewUser}/.ssh
echo ${NewUser}
