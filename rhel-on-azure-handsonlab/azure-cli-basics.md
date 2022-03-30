
Azure Command Line Client basics
===========================

You can use Azure CLI on your laptop running any Linux, macOS or Windows and also via Azure Cloud Shell on your browser.


Azure CLI, or *az* command, can be considered a remote control to your Azure subscriptions allowing you to do everything on command line instead of clicking on the Azure Portal. It utilizes the same API functionality the Azure Portal is using.

At this point you have two options to continue, choose the one more suitable for you:

A) Install Azure CLI on your laptop
--------------------------------

This is recommended if you are or will be frequent Azure user *and* you can install software on your laptop.

Linux and macOS laptops
--
Use your favourite terminal application and install the azure-cli package.

See detailed instructions from here:
https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest

Windows 10 laptops
---

You need to use Windows Subsystem for Linux (WSL) or some other Linux-like envinronment such as Git Bash (mingw-based) on your laptop to get proper Linux working environment.

In case you have never heard of WSL before, check this out. WSL is really cool and magical system:  https://devblogs.microsoft.com/commandline/learn-about-windows-console-and-windows-subsystem-for-linux-wsl/


![WSL](https://github.com/andreipintica/Linux-On-Azure/blob/master/rhel-on-azure-handsonlab/images/wsl1.jpg)

B) Use Azure CLI on Cloud Shell
----------------------------

Cloud Shell is a free (excl. storage cost) service which provides you a virtual Linux server in a container, including pre-installed Azure CLI.


![Cloud Shell](https://github.com/andreipintica/Linux-On-Azure/blob/master/rhel-on-azure-handsonlab/images/cloudshell1.jpg)


Checkpoint
=
Are you sure you have completed the previous parts from this document? Good, please proceed...


First time login to Azure on shell
-----

If you have not used Azure CLI before, you will get an error:
```
andreip@andreip-Surface3:~$ az vm list
Please run 'az login' to setup account.
```

Login
--
```
$ az login -o table
Note, we have launched a browser for you to login. For old experience with device code, use "az login --use-device-code"
You have logged in. Now let us find all the subscriptions to which you have access...
CloudName    IsDefault    Name                                State    TenantId
-----------  -----------  ----------------------------------  -------  ------------------------------------
AzureCloud   True         apintica Azure Lab                  Enabled  xxxxxxxx-xxxx-xxxx-ZZZZ-XXXXXXXXXXXX

```
A browser window is opened and you are prompted to login to your *private Microsoft Account* which contains the correct subscription for this lab.

Note the *-o table*: it tells the shell to output in human readable table format.


```
$az account list -o table
 Name                                  CloudName    SubscriptionId                        State    IsDefault
 ------------------------------------  -----------  ------------------------------------  -------  -----------
 apintica Azure Lab                    AzureCloud   xxxxxxxx-xxxx-xxxx-zzzz-yyyyyyyyyyyy  Enabled  False

$ az account set -s 59b082db-abf2-4a89-9703-xxxxxxxxxxx
```

At this point your Azure CLI is fully functional.

What's next?
===

Once this lab is completed, go back to [the agenda](README.md).
