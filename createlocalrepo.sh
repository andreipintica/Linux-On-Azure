#!/bin/bash
#Create local Repo on a RedHat based Linux!


#In order to install software on a server that is offline, we set up a local repo.
#The only thing it needs is the operating system installation .iso file.

sudo mkdir /ISOs

sudo cp /home/tom/Downloads/RHEL7.iso /ISOs

sudo mkdir -p /var/OSimage

sudo mount -o loop,ro /ISOs/RHEL7.iso /var/OSimage

sudo vim /etc/yum.repos.d/rhel7.repo
[RHEL7]
name=RHEL 7
baseurl=file:///var/OSimage/
gpgcheck=0
enabled=1

sudo yum clean all

yum repolist