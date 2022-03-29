#!/bin/bash
#Reinstallation of openssh for CentOS/RHEL 7 for Azure environment.
#It was created to be used with Azure Linux Custom Extension with the waagent limitation.

touch /home/script.sh
chmod +x /home/script.sh

echo "#!/bin/bash" >> /home/script.sh
echo "yum remove openssh-debug -y" >> /home/script.sh
echo "yum remove openssh-clients -y" >> /home/script.sh
echo "yum remove openssh-server -y" >> /home/script.sh
echo "yum remove openssh -y" >> /home/script.sh
echo "yum reinstall openssh -y" >> /home/script.sh
echo "yum reinstall openssh-server -y" >> /home/script.sh
echo "yum install openssh-clients -y" >> /home/script.sh
echo "service sshd restart -y" >> /home/script.sh
echo "service sshd restart -y" >> /home/script.sh
echo "service waagent restart -y" >> /home/script.sh

/home/script.sh
