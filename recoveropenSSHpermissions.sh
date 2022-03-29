#!/bin/bash
#For custom script extension or run command Azure features in case the ssh permissions where accidentally changed.

cp -ar /etc/ssh /etc/ssh1.bak		

chown root:root /var/run/sshd
chmod 744 /var/run/sshd	

chmod 600 /etc/ssh/ssh_host*				
chown root:root /etc/ssh/ssh_host*  			

chmod 644 /etc/shh/*.pub				
chown root:root /etc/shh/*.pub				

service sshd restart
systemctl restart sshd

exit 0;