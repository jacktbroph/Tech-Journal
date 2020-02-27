# Creates new ssh user

NewUser="$1"

useradd -m -d /home/${NewUser} -s /bin/bash ${NewUser}

mkdir /home/${NewUser}/.ssh

# Adds SSH Public Key from local repo

cp SYS265/linux/public-keys/id_rsa.pub /home/${NewUser}/.ssh/authorized_keys
chmod 700 /home/${NewUser}/.ssh
chmod 600 /home/${NewUser}/.ssh/authorized_keys
chown -R ${NewUser}:${NewUser} /home/${NewUser}/.ssh
echo ${NewUser}
