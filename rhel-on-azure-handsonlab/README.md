About this lab
========
This is a Hands-On-Lab for *Red Hat Enterprise Linux on Azure*.

Attendees will learn basics of Azure and gain essential skills on deploying and managing Linux on Azure.

This lab will also cover more advanced topics such as monitoring and update management, as well as debugging Linux boot problems.

Typical running time for the lab is two hours.

🔧 Technologies & Tools
 
![](https://img.shields.io/badge/OS-RedHatLinux-informational?style=flat&logo=Redhat&logoColor=white&color=2bbc8a) ![](https://img.shields.io/badge/Code-VisualStudioCode-informational?style=flat&logo=VisualStudioCode&logoColor=white&color=2bbc8a) ![](https://img.shields.io/badge/Cloud-MicrosoftAzure-informational?style=flat&logo=MicrosoftAzure&logoColor=white&color=2bbc8a) 


Target audience
===============
* Linux sysadmins
* Infrastructure architects

Attendee pre-requisites
=======================
* Basic understanding of Linux administration via command line
* No previous Azure experience required
* Bring your own laptop

Notes for instructors
============
* Azure Passes or existing Azure subscriptions required for attendees
* Estimated proctor-to-attendee ratio 1:10


----

Azure Subscription instructions
===
Your instructor will tell you more about the Azure subscriptions to be used in this lab in case they are sponsored by the lab organizer.

This lab does not require anything special from the subscription, so you can use your existing subscription. Mind the costs and delete resources you don't need afterads.

----

Hands-on labs start here
====

Are you sure your Azure subscription works? If unsure, ask from the instructor!


Mandatory labs
--
These steps have to be done in order of appearance. The option labs depend on these.


* [Azure basics](azure-basics.md)
* [Azure CLI basics](azure-cli-basics.md)
* [Concept of VM images on Azure](azure-vmimages.md)
* [Creating Linux VMs](linuxvm.md)

At the end of these steps you will have these resources created:
* Resource group *"LinuxResourceGroup"* located in *"westeurope"* 
* One Red Hat Enterprise Linux VM named *"myLinuxVM"* with admin username *"azureuser"* and password *"abcdef12345!"*

Optional labs
----
Pick one or more of these in any order. These labs don't depend on each other, but they do depend from the earlier mandatory steps.

* [Resizing Linux VMs and its Disks on Azure](linuxresize.md)
* [Red Hat Update Infrastructure on Azure](azure-rhui.md)
* [Linux Update Management on Azure](linuxupdate.md)
* [Understanding `WALinuxAgent`](understanding-wala.md)
* [Azure Backup](azure-backup.md)
* [Advanced debugging](azure-vm-debugging.md)

Mandatory cleanup
--
If you do not plan to continue to use the resources created in these labs, please clean up by deleting the resources created.



* [Deleting resource groups](cleanup.md)

By cleaning up you also save our money and help us organize these trainings in the future as well. Thank you!

----
Contact
- [Twitter @AndreiPintica](https://twitter.com/AndreiPintica)
- [Linkedin](https://linkedin.com/in/andreipintica)

