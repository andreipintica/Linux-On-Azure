#!/bin/bash
#Simple change password to use as a custom script extension in Azure Linux VMs where waagent is not reseting the password.
#Waagent needs to be running healthy.

#Change "azureadmin" by your username and "P@s$w0rd" by the new password (without spaces).

username=azureadmin
password=P@s$w0rd

echo "$username:$password" | chpasswd

exit 0;