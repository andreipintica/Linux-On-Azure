Concept of VM images on Azure
=============================

VM images are published by Microsoft and it's partners. You can also upload your own images for your own use. In this lab we will focus on using the official images already available in Azure.


**Let the instructor know at this point if you have any problems with these commands!**

You should now run these commands on your Azure CLI shell. 


Image Publishers
-----------------
There are various companies publishing VM images into Azure Marketplace.

To list latest images from all publishers:

```
$ az vm image list -o table
You are viewing an offline list of images, use --all to retrieve an up-to-date list
Offer          Publisher               Sku                 Urn                                                             UrnAlias             Version
-------------  ----------------------  ------------------  --------------------------------------------------------------  -------------------  ---------
CentOS         OpenLogic               7.5                 OpenLogic:CentOS:7.5:latest                                     CentOS               latest
CoreOS         CoreOS                  Stable              CoreOS:CoreOS:Stable:latest                                     CoreOS               latest
Debian         credativ                9                   credativ:Debian:9:latest                                        Debian               latest
openSUSE-Leap  SUSE                    42.3                SUSE:openSUSE-Leap:42.3:latest                                  openSUSE-Leap        latest
RHEL           RedHat                  7-RAW               RedHat:RHEL:7-RAW:latest                                        RHEL                 latest
SLES           SUSE                    15                  SUSE:SLES:15:latest                                             SLES                 latest
UbuntuServer   Canonical               18.04-LTS           Canonical:UbuntuServer:18.04-LTS:latest                         UbuntuLTS            latest
WindowsServer  MicrosoftWindowsServer  2019-Datacenter     MicrosoftWindowsServer:WindowsServer:2019-Datacenter:latest     Win2019Datacenter    latest
WindowsServer  MicrosoftWindowsServer  2016-Datacenter     MicrosoftWindowsServer:WindowsServer:2016-Datacenter:latest     Win2016Datacenter    latest
WindowsServer  MicrosoftWindowsServer  2012-R2-Datacenter  MicrosoftWindowsServer:WindowsServer:2012-R2-Datacenter:latest  Win2012R2Datacenter  latest
WindowsServer  MicrosoftWindowsServer  2012-Datacenter     MicrosoftWindowsServer:WindowsServer:2012-Datacenter:latest     Win2012Datacenter    latest
WindowsServer  MicrosoftWindowsServer  2008-R2-SP1         MicrosoftWindowsServer:WindowsServer:2008-R2-SP1:latest         Win2008R2SP1         latest
```

List available Red Hat images on Azure Marketplace
--------------------------------------------------

Red Hat has published big number of RHEL images on Azure. Listing them takes about 30 seconds:

```
$ az vm image list --publisher RedHat --all -o table
Offer                     Publisher    Sku                        Urn                                                                 Version
------------------------  -----------  -------------------------  ------------------------------------------------------------------  ----------------
ocp-rhcos-worker          redhat-rhel  49-gen2                    redhat-rhel:ocp-rhcos-worker:49-gen2:4.9.456                        4.9.456
ocp-rhcos-worker          redhat-rhel  ocp-4-free-gen1            redhat-rhel:ocp-rhcos-worker:ocp-4-free-gen1:4.9.2021111600         4.9.2021111600
ocp-worker                redhat-rhel  ocp-worker-100-gen1        redhat-rhel:ocp-worker:ocp-worker-100-gen1:4.8.2021092400           4.8.2021092400
ocp-worker                RedHat       ocp-worker-a               RedHat:ocp-worker:ocp-worker-a:4.8.2021122100                       4.8.2021122100
ocp-worker                RedHat       ocp-worker-a-gen1          RedHat:ocp-worker:ocp-worker-a-gen1:4.8.2021122100                  4.8.2021122100
oke-worker                redhat-rhel  oke-worker-100-gen1        redhat-rhel:oke-worker:oke-worker-100-gen1:4.8.2021092400           4.8.2021092400
ocp-worker                RedHat       ocp-worker-b               RedHat:ocp-worker:ocp-worker-b:4.8.2021122100                       4.8.2021122100
ocp-worker                RedHat       ocp-worker-b-gen1          RedHat:ocp-worker:ocp-worker-b-gen1:4.8.2021122100                  4.8.2021122100
ocp-worker                RedHat       ocp-worker-c               RedHat:ocp-worker:ocp-worker-c:4.8.2021122100                       4.8.2021122100
opp-worker                redhat-rhel  opp-worker-100-gen1        redhat-rhel:opp-worker:opp-worker-100-gen1:4.8.2021092400           4.8.2021092400
ocp-worker                RedHat       ocp-worker-c-gen1          RedHat:ocp-worker:ocp-worker-c-gen1:4.8.2021122100                  4.8.2021122100
oke-worker                RedHat       oke-worker-a               RedHat:oke-worker:oke-worker-a:4.8.2021122100                       4.8.2021122100
oke-worker                RedHat       oke-worker-a-gen1          RedHat:oke-worker:oke-worker-a-gen1:4.8.2021122100                  4.8.2021122100
oke-worker                RedHat       oke-worker-b               RedHat:oke-worker:oke-worker-b:4.8.2021122100                       4.8.2021122100
oke-worker                RedHat       oke-worker-b-gen1          RedHat:oke-worker:oke-worker-b-gen1:4.8.2021122100                  4.8.2021122100
oke-worker                RedHat       oke-worker-c               RedHat:oke-worker:oke-worker-c:4.8.2021122100                       4.8.2021122100
oke-worker                RedHat       oke-worker-c-gen1          RedHat:oke-worker:oke-worker-c-gen1:4.8.2021122100                  4.8.2021122100
opp-worker                RedHat       opp-worker-a               RedHat:opp-worker:opp-worker-a:4.8.2021122100                       4.8.2021122100
opp-worker                RedHat       opp-worker-a-gen1          RedHat:opp-worker:opp-worker-a-gen1:4.8.2021122100                  4.8.2021122100
opp-worker                RedHat       opp-worker-b               RedHat:opp-worker:opp-worker-b:4.8.2021122100                       4.8.2021122100
opp-worker                RedHat       opp-worker-b-gen1          RedHat:opp-worker:opp-worker-b-gen1:4.8.2021122100                  4.8.2021122100
opp-worker                RedHat       opp-worker-c               RedHat:opp-worker:opp-worker-c:4.8.2021122100                       4.8.2021122100
opp-worker                RedHat       opp-worker-c-gen1          RedHat:opp-worker:opp-worker-c-gen1:4.8.2021122100                  4.8.2021122100
osa                       RedHat       osa_311                    RedHat:osa:osa_311:311.161.20200115                                 311.161.20200115
osa                       RedHat       osa_311                    RedHat:osa:osa_311:311.170.20200224                                 311.170.20200224
osa                       RedHat       osa_311                    RedHat:osa:osa_311:311.188.20200320                                 311.188.20200320
osa                       RedHat       osa_311                    RedHat:osa:osa_311:311.200.20200415                                 311.200.20200415
osa                       RedHat       osa_311                    RedHat:osa:osa_311:311.219.20200603                                 311.219.20200603
osa                       RedHat       osa_311                    RedHat:osa:osa_311:311.232.20200629                                 311.232.20200629
osa                       RedHat       osa_311                    RedHat:osa:osa_311:311.272.20200902                                 311.272.20200902
osa                       RedHat       osa_311                    RedHat:osa:osa_311:311.346.20210118                                 311.346.20210118
osa                       RedHat       osa_311                    RedHat:osa:osa_311:311.452.20210618                                 311.452.20210618
rh-rhel-7-main-2          RedHat       rhel_7_main_a1             RedHat:rh-rhel-7-main-2:rhel_7_main_a1:7.9.2021110400               7.9.2021110400
rh-rhel-7-main-2          RedHat       rhel_7_main_a1_gen1        RedHat:rh-rhel-7-main-2:rhel_7_main_a1_gen1:7.9.2021110400          7.9.2021110400
rh-rhel-7-main-2          RedHat       rhel_7_main_b1             RedHat:rh-rhel-7-main-2:rhel_7_main_b1:7.9.2021110400               7.9.2021110400
rh-rhel-7-main-2          RedHat       rhel_7_main_b1_gen1        RedHat:rh-rhel-7-main-2:rhel_7_main_b1_gen1:7.9.2021110400          7.9.2021110400
rh-rhel-7-main-2          RedHat       rhel_7_main_c1             RedHat:rh-rhel-7-main-2:rhel_7_main_c1:7.9.2021110400               7.9.2021110400
rh-rhel-7-main-2          RedHat       rhel_7_main_c1_gen1        RedHat:rh-rhel-7-main-2:rhel_7_main_c1_gen1:7.9.2021110400          7.9.2021110400
rh-rhel-8-main-2          RedHat       rhel_8_main_a1             RedHat:rh-rhel-8-main-2:rhel_8_main_a1:8.4.2021110400               8.4.2021110400
rh-rhel-8-main-2          RedHat       rhel_8_main_a1             RedHat:rh-rhel-8-main-2:rhel_8_main_a1:8.5.2022030600               8.5.2022030600
rh-rhel-8-main-2          RedHat       rhel_8_main_a1_gen1        RedHat:rh-rhel-8-main-2:rhel_8_main_a1_gen1:8.4.2021110400          8.4.2021110400
rh-rhel-8-main-2          RedHat       rhel_8_main_a1_gen1        RedHat:rh-rhel-8-main-2:rhel_8_main_a1_gen1:8.5.2022030600          8.5.2022030600
rh-rhel-8-main-2          RedHat       rhel_8_main_b1             RedHat:rh-rhel-8-main-2:rhel_8_main_b1:8.4.2021110400               8.4.2021110400
rh-rhel-8-main-2          RedHat       rhel_8_main_b1             RedHat:rh-rhel-8-main-2:rhel_8_main_b1:8.5.2022030600               8.5.2022030600
rh-rhel-8-main-2          RedHat       rhel_8_main_b1_gen1        RedHat:rh-rhel-8-main-2:rhel_8_main_b1_gen1:8.4.2021110400          8.4.2021110400
rh-rhel-8-main-2          RedHat       rhel_8_main_b1_gen1        RedHat:rh-rhel-8-main-2:rhel_8_main_b1_gen1:8.5.2022030600          8.5.2022030600
rh-rhel-8-main-2          RedHat       rhel_8_main_c1             RedHat:rh-rhel-8-main-2:rhel_8_main_c1:8.4.2021110400               8.4.2021110400
rh-rhel-8-main-2          RedHat       rhel_8_main_c1             RedHat:rh-rhel-8-main-2:rhel_8_main_c1:8.5.2022030600               8.5.2022030600
rh-rhel-8-main-2          RedHat       rhel_8_main_c1_gen1        RedHat:rh-rhel-8-main-2:rhel_8_main_c1_gen1:8.4.2021110400          8.4.2021110400
rh-rhel-8-main-2          RedHat       rhel_8_main_c1_gen1        RedHat:rh-rhel-8-main-2:rhel_8_main_c1_gen1:8.5.2022030600          8.5.2022030600
RHEL                      RedHat       6.10                       RedHat:RHEL:6.10:6.10.2019030722                                    6.10.2019030722
RHEL                      RedHat       6.10                       RedHat:RHEL:6.10:6.10.2019061919                                    6.10.2019061919
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.4.2021051101                                    7.4.2021051101
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.4.2021051701                                    7.4.2021051701
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.5.2021051103                                    7.5.2021051103
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.5.2021051701                                    7.5.2021051701
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.6.2018103108                                    7.6.2018103108
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.6.2019051523                                    7.6.2019051523
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.6.2019060521                                    7.6.2019060521
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.6.2019062019                                    7.6.2019062019
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.6.2019062414                                    7.6.2019062414
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.6.20191204                                      7.6.20191204
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.6.2020082422                                    7.6.2020082422
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.6.2021051101                                    7.6.2021051101
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.6.2021051701                                    7.6.2021051701
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.7.2019081522                                    7.7.2019081522
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.7.2019102813                                    7.7.2019102813
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.7.2020020413                                    7.7.2020020413
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.7.2020031212                                    7.7.2020031212
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.7.2020053001                                    7.7.2020053001
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.7.2020082422                                    7.7.2020082422
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.7.2020110301                                    7.7.2020110301
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.7.2021051701                                    7.7.2021051701
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.8.2020041421                                    7.8.2020041421
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.8.2020042719                                    7.8.2020042719
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.8.2020082421                                    7.8.2020082421
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.8.2020111201                                    7.8.2020111201
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.8.2021051701                                    7.8.2021051701
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.9.2020100116                                    7.9.2020100116
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.9.2020111202                                    7.9.2020111202
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.9.2021051701                                    7.9.2021051701
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.9.2021100812                                    7.9.2021100812
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.9.2021121603                                    7.9.2021121603
RHEL                      RedHat       7-LVM                      RedHat:RHEL:7-LVM:7.9.2022032203                                    7.9.2022032203
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.2.2017090716                                    7.2.2017090716
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.3.2017090723                                    7.3.2017090723
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.4.2017080220                                    7.4.2017080220
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.4.2017080923                                    7.4.2017080923
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.4.2017111521                                    7.4.2017111521
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.4.2017120423                                    7.4.2017120423
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.4.2018010506                                    7.4.2018010506
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.5.2018041319                                    7.5.2018041319
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.5.2018042521                                    7.5.2018042521
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.5.2018050901                                    7.5.2018050901
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.5.2018072019                                    7.5.2018072019
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.5.2018081518                                    7.5.2018081518
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.6.2018103108                                    7.6.2018103108
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.6.2019051523                                    7.6.2019051523
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.6.2019060521                                    7.6.2019060521
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.6.2019062020                                    7.6.2019062020
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.6.2019062120                                    7.6.2019062120
RHEL                      RedHat       7-RAW                      RedHat:RHEL:7-RAW:7.7.2019090418                                    7.7.2019090418
RHEL                      RedHat       7-RAW-CI                   RedHat:RHEL:7-RAW-CI:7.4.2017112900                                 7.4.2017112900
RHEL                      RedHat       7-RAW-CI                   RedHat:RHEL:7-RAW-CI:7.5.2018041704                                 7.5.2018041704
RHEL                      RedHat       7-RAW-CI                   RedHat:RHEL:7-RAW-CI:7.6.2018103121                                 7.6.2018103121
RHEL                      RedHat       7-RAW-CI                   RedHat:RHEL:7-RAW-CI:7.6.2019030421                                 7.6.2019030421
RHEL                      RedHat       7-RAW-CI                   RedHat:RHEL:7-RAW-CI:7.6.2019040919                                 7.6.2019040919
RHEL                      RedHat       7-RAW-CI                   RedHat:RHEL:7-RAW-CI:7.6.2019051523                                 7.6.2019051523
RHEL                      RedHat       7-RAW-CI                   RedHat:RHEL:7-RAW-CI:7.6.2019060521                                 7.6.2019060521
RHEL                      RedHat       7-RAW-CI                   RedHat:RHEL:7-RAW-CI:7.6.2019062019                                 7.6.2019062019
RHEL                      RedHat       7-RAW-CI                   RedHat:RHEL:7-RAW-CI:7.6.2019072418                                 7.6.2019072418
RHEL                      RedHat       7-RAW-CI                   RedHat:RHEL:7-RAW-CI:7.7.2019081601                                 7.7.2019081601
RHEL                      RedHat       7.2                        RedHat:RHEL:7.2:7.2.2017090717                                      7.2.2017090717
RHEL                      RedHat       7.3                        RedHat:RHEL:7.3:7.3.20161104                                        7.3.20161104
RHEL                      RedHat       7.3                        RedHat:RHEL:7.3:7.3.20170201                                        7.3.20170201
RHEL                      RedHat       7.3                        RedHat:RHEL:7.3:7.3.20170223                                        7.3.20170223
RHEL                      RedHat       7.3                        RedHat:RHEL:7.3:7.3.2017032021                                      7.3.2017032021
RHEL                      RedHat       7.3                        RedHat:RHEL:7.3:7.3.2017042521                                      7.3.2017042521
RHEL                      RedHat       7.3                        RedHat:RHEL:7.3:7.3.2017051117                                      7.3.2017051117
RHEL                      RedHat       7.3                        RedHat:RHEL:7.3:7.3.2017052619                                      7.3.2017052619
RHEL                      RedHat       7.3                        RedHat:RHEL:7.3:7.3.2017053019                                      7.3.2017053019
RHEL                      RedHat       7.3                        RedHat:RHEL:7.3:7.3.2017062722                                      7.3.2017062722
RHEL                      RedHat       7.3                        RedHat:RHEL:7.3:7.3.2017071923                                      7.3.2017071923
RHEL                      RedHat       7.3                        RedHat:RHEL:7.3:7.3.2017081103                                      7.3.2017081103
RHEL                      RedHat       7.3                        RedHat:RHEL:7.3:7.3.2017081120                                      7.3.2017081120
RHEL                      RedHat       7.3                        RedHat:RHEL:7.3:7.3.2017090105                                      7.3.2017090105
RHEL                      RedHat       7.3                        RedHat:RHEL:7.3:7.3.2017090723                                      7.3.2017090723
RHEL                      RedHat       7.3                        RedHat:RHEL:7.3:7.3.2017090800                                      7.3.2017090800
RHEL                      RedHat       7.4                        RedHat:RHEL:7.4:7.4.2018010506                                      7.4.2018010506
RHEL                      RedHat       7.4                        RedHat:RHEL:7.4:7.4.2018010507                                      7.4.2018010507
RHEL                      RedHat       7.4                        RedHat:RHEL:7.4:7.4.2019041718                                      7.4.2019041718
RHEL                      RedHat       7.4                        RedHat:RHEL:7.4:7.4.2019062107                                      7.4.2019062107
RHEL                      RedHat       7.4                        RedHat:RHEL:7.4:7.4.2019102813                                      7.4.2019102813
RHEL                      RedHat       7.4                        RedHat:RHEL:7.4:7.4.2021051001                                      7.4.2021051001
RHEL                      RedHat       7.4                        RedHat:RHEL:7.4:7.4.2021051701                                      7.4.2021051701
RHEL                      RedHat       7.5                        RedHat:RHEL:7.5:7.5.2018081519                                      7.5.2018081519
RHEL                      RedHat       7.5                        RedHat:RHEL:7.5:7.5.2019060305                                      7.5.2019060305
RHEL                      RedHat       7.5                        RedHat:RHEL:7.5:7.5.2019062018                                      7.5.2019062018
RHEL                      RedHat       7.5                        RedHat:RHEL:7.5:7.5.2021051101                                      7.5.2021051101
RHEL                      RedHat       7.5                        RedHat:RHEL:7.5:7.5.2021071301                                      7.5.2021071301
RHEL                      RedHat       7.5                        RedHat:RHEL:7.5:7.5.2021072201                                      7.5.2021072201
RHEL                      RedHat       7.6                        RedHat:RHEL:7.6:7.6.2019052206                                      7.6.2019052206
RHEL                      RedHat       7.6                        RedHat:RHEL:7.6:7.6.2019060521                                      7.6.2019060521
RHEL                      RedHat       7.6                        RedHat:RHEL:7.6:7.6.2019062116                                      7.6.2019062116
RHEL                      RedHat       7.6                        RedHat:RHEL:7.6:7.6.2019102813                                      7.6.2019102813
RHEL                      RedHat       7.6                        RedHat:RHEL:7.6:7.6.2020080921                                      7.6.2020080921
RHEL                      RedHat       7.6                        RedHat:RHEL:7.6:7.6.2021051101                                      7.6.2021051101
RHEL                      RedHat       7.7                        RedHat:RHEL:7.7:7.7.2019090316                                      7.7.2019090316
RHEL                      RedHat       7.7                        RedHat:RHEL:7.7:7.7.2020052922                                      7.7.2020052922
RHEL                      RedHat       7.7                        RedHat:RHEL:7.7:7.7.2020090823                                      7.7.2020090823
RHEL                      RedHat       7.7                        RedHat:RHEL:7.7:7.7.2020110315                                      7.7.2020110315
RHEL                      RedHat       7.7                        RedHat:RHEL:7.7:7.7.2021052001                                      7.7.2021052001
RHEL                      RedHat       7.8                        RedHat:RHEL:7.8:7.8.2020040309                                      7.8.2020040309
RHEL                      RedHat       7.8                        RedHat:RHEL:7.8:7.8.2020050910                                      7.8.2020050910
RHEL                      RedHat       7.8                        RedHat:RHEL:7.8:7.8.2020090816                                      7.8.2020090816
RHEL                      RedHat       7.8                        RedHat:RHEL:7.8:7.8.2020110315                                      7.8.2020110315
RHEL                      RedHat       7.8                        RedHat:RHEL:7.8:7.8.2020111309                                      7.8.2020111309
RHEL                      RedHat       7.8                        RedHat:RHEL:7.8:7.8.2021051701                                      7.8.2021051701
RHEL                      RedHat       74-gen2                    RedHat:RHEL:74-gen2:7.4.20200123                                    7.4.20200123
RHEL                      RedHat       74-gen2                    RedHat:RHEL:74-gen2:7.4.2021051102                                  7.4.2021051102
RHEL                      RedHat       74-gen2                    RedHat:RHEL:74-gen2:7.4.2021051702                                  7.4.2021051702
RHEL                      RedHat       75-gen2                    RedHat:RHEL:75-gen2:7.5.20191212                                    7.5.20191212
RHEL                      RedHat       75-gen2                    RedHat:RHEL:75-gen2:7.5.2020090820                                  7.5.2020090820
RHEL                      RedHat       75-gen2                    RedHat:RHEL:75-gen2:7.5.2021051102                                  7.5.2021051102
RHEL                      RedHat       75-gen2                    RedHat:RHEL:75-gen2:7.5.2021071302                                  7.5.2021071302
RHEL                      RedHat       75-gen2                    RedHat:RHEL:75-gen2:7.5.2021072202                                  7.5.2021072202
RHEL                      RedHat       76-gen2                    RedHat:RHEL:76-gen2:7.6.20191212                                    7.6.20191212
RHEL                      RedHat       76-gen2                    RedHat:RHEL:76-gen2:7.6.2020090822                                  7.6.2020090822
RHEL                      RedHat       76-gen2                    RedHat:RHEL:76-gen2:7.6.2021051101                                  7.6.2021051101
RHEL                      RedHat       77-gen2                    RedHat:RHEL:77-gen2:7.7.2020020416                                  7.7.2020020416
RHEL                      RedHat       77-gen2                    RedHat:RHEL:77-gen2:7.7.2020052923                                  7.7.2020052923
RHEL                      RedHat       77-gen2                    RedHat:RHEL:77-gen2:7.7.2020080924                                  7.7.2020080924
RHEL                      RedHat       77-gen2                    RedHat:RHEL:77-gen2:7.7.2020110316                                  7.7.2020110316
RHEL                      RedHat       77-gen2                    RedHat:RHEL:77-gen2:7.7.2021052002                                  7.7.2021052002
RHEL                      RedHat       78-gen2                    RedHat:RHEL:78-gen2:7.8.202004014                                   7.8.202004014
RHEL                      RedHat       78-gen2                    RedHat:RHEL:78-gen2:7.8.2020050911                                  7.8.2020050911
RHEL                      RedHat       78-gen2                    RedHat:RHEL:78-gen2:7.8.2020090817                                  7.8.2020090817
RHEL                      RedHat       78-gen2                    RedHat:RHEL:78-gen2:7.8.2020110317                                  7.8.2020110317
RHEL                      RedHat       78-gen2                    RedHat:RHEL:78-gen2:7.8.2020111310                                  7.8.2020111310
RHEL                      RedHat       78-gen2                    RedHat:RHEL:78-gen2:7.8.2021051702                                  7.8.2021051702
RHEL                      RedHat       79-gen2                    RedHat:RHEL:79-gen2:7.9.2020100116                                  7.9.2020100116
RHEL                      RedHat       79-gen2                    RedHat:RHEL:79-gen2:7.9.2020111302                                  7.9.2020111302
RHEL                      RedHat       79-gen2                    RedHat:RHEL:79-gen2:7.9.2021051702                                  7.9.2021051702
RHEL                      RedHat       79-gen2                    RedHat:RHEL:79-gen2:7.9.2021100810                                  7.9.2021100810
RHEL                      RedHat       79-gen2                    RedHat:RHEL:79-gen2:7.9.2021121602                                  7.9.2021121602
RHEL                      RedHat       79-gen2                    RedHat:RHEL:79-gen2:7.9.2022032202                                  7.9.2022032202
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.4.20191212                                  7.4.20191212
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.4.2021051102                                7.4.2021051102
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.4.2021051702                                7.4.2021051702
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.5.20191212                                  7.5.20191212
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.5.2021051101                                7.5.2021051101
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.5.2021051702                                7.5.2021051702
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.6.20191206                                  7.6.20191206
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.6.2020082423                                7.6.2020082423
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.6.2021051102                                7.6.2021051102
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.6.2021051702                                7.6.2021051702
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.7.2020020420                                7.7.2020020420
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.7.2020031213                                7.7.2020031213
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.7.2020053002                                7.7.2020053002
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.7.2020082423                                7.7.2020082423
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.7.2020110307                                7.7.2020110307
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.7.2021051702                                7.7.2021051702
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.8.2020041422                                7.8.2020041422
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.8.2020042720                                7.8.2020042720
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.8.2020082423                                7.8.2020082423
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.8.2020111204                                7.8.2020111204
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.8.2021051702                                7.8.2021051702
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.9.2018100812                                7.9.2018100812
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.9.2020100117                                7.9.2020100117
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.9.2020111205                                7.9.2020111205
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.9.2021051702                                7.9.2021051702
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.9.2021121604                                7.9.2021121604
RHEL                      RedHat       7lvm-gen2                  RedHat:RHEL:7lvm-gen2:7.9.2022032206                                7.9.2022032206
RHEL                      RedHat       7_9                        RedHat:RHEL:7_9:7.9.2020100115                                      7.9.2020100115
RHEL                      RedHat       7_9                        RedHat:RHEL:7_9:7.9.2020111301                                      7.9.2020111301
RHEL                      RedHat       7_9                        RedHat:RHEL:7_9:7.9.2021051701                                      7.9.2021051701
RHEL                      RedHat       7_9                        RedHat:RHEL:7_9:7.9.202110089                                       7.9.202110089
RHEL                      RedHat       7_9                        RedHat:RHEL:7_9:7.9.2021121601                                      7.9.2021121601
RHEL                      RedHat       7_9                        RedHat:RHEL:7_9:7.9.2022032201                                      7.9.2022032201
RHEL                      RedHat       8                          RedHat:RHEL:8:8.0.2019050711                                        8.0.2019050711
RHEL                      RedHat       8                          RedHat:RHEL:8:8.0.2019062020                                        8.0.2019062020
RHEL                      RedHat       8                          RedHat:RHEL:8:8.0.2019100320                                        8.0.2019100320
RHEL                      RedHat       8                          RedHat:RHEL:8:8.0.2019101800                                        8.0.2019101800
RHEL                      RedHat       8                          RedHat:RHEL:8:8.0.20191023                                          8.0.20191023
RHEL                      RedHat       8-gen2                     RedHat:RHEL:8-gen2:8.0.20191024                                     8.0.20191024
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.0.20210422                                      8.0.20210422
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.0.2021091103                                    8.0.2021091103
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.0.2022031411                                    8.0.2022031411
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.1.20200318                                      8.1.20200318
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.1.20200901                                      8.1.20200901
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.1.2021040401                                    8.1.2021040401
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.1.2021091103                                    8.1.2021091103
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.1.2022031405                                    8.1.2022031405
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.2.20200509                                      8.2.20200509
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.2.20200905                                      8.2.20200905
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.2.2021040401                                    8.2.2021040401
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.2.2021091203                                    8.2.2021091203
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.2.2022031405                                    8.2.2022031405
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.3.2020111909                                    8.3.2020111909
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.3.2021040401                                    8.3.2021040401
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.3.2021091103                                    8.3.2021091103
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.3.2022011203                                    8.3.2022011203
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.3.2022031405                                    8.3.2022031405
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.4.2021052301                                    8.4.2021052301
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.4.2021081901                                    8.4.2021081901
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.4.2021091103                                    8.4.2021091103
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.4.2022031405                                    8.4.2022031405
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.5.2021121503                                    8.5.2021121503
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.5.2022031405                                    8.5.2022031405
RHEL                      RedHat       8-LVM                      RedHat:RHEL:8-LVM:8.5.2022032205                                    8.5.2022032205
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.0.20210422                                 8.0.20210422
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.0.2021091104                               8.0.2021091104
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.0.2022031412                               8.0.2022031412
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.1.20200318                                 8.1.20200318
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.1.20200902                                 8.1.20200902
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.1.2021040402                               8.1.2021040402
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.1.2021091104                               8.1.2021091104
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.1.2022031406                               8.1.2022031406
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.2.20200506                                 8.2.20200506
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.2.20200903                                 8.2.20200903
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.2.2021040402                               8.2.2021040402
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.2.2021091204                               8.2.2021091204
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.2.2022031406                               8.2.2022031406
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.3.2020111910                               8.3.2020111910
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.3.2021040402                               8.3.2021040402
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.3.2021091104                               8.3.2021091104
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.3.2022011204                               8.3.2022011204
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.3.2022031406                               8.3.2022031406
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.4.2021052302                               8.4.2021052302
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.4.2021082402                               8.4.2021082402
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.4.2021091104                               8.4.2021091104
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.4.2022031406                               8.4.2022031406
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.5.2021121504                               8.5.2021121504
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.5.2022031406                               8.5.2022031406
RHEL                      RedHat       8-lvm-gen2                 RedHat:RHEL:8-lvm-gen2:8.5.2022032206                               8.5.2022032206
RHEL                      RedHat       8.1                        RedHat:RHEL:8.1:8.1.2020020415                                      8.1.2020020415
RHEL                      RedHat       8.1                        RedHat:RHEL:8.1:8.1.2020082711                                      8.1.2020082711
RHEL                      RedHat       8.1                        RedHat:RHEL:8.1:8.1.2020110711                                      8.1.2020110711
RHEL                      RedHat       8.1                        RedHat:RHEL:8.1:8.1.2020112501                                      8.1.2020112501
RHEL                      RedHat       8.1                        RedHat:RHEL:8.1:8.1.2021040910                                      8.1.2021040910
RHEL                      RedHat       8.1                        RedHat:RHEL:8.1:8.1.2021091101                                      8.1.2021091101
RHEL                      RedHat       8.1                        RedHat:RHEL:8.1:8.1.2022031403                                      8.1.2022031403
RHEL                      RedHat       8.1-ci                     RedHat:RHEL:8.1-ci:8.1.2020042511                                   8.1.2020042511
RHEL                      RedHat       8.1-ci                     RedHat:RHEL:8.1-ci:8.1.2020082712                                   8.1.2020082712
RHEL                      RedHat       8.1-ci                     RedHat:RHEL:8.1-ci:8.1.2020110713                                   8.1.2020110713
RHEL                      RedHat       8.1-ci                     RedHat:RHEL:8.1-ci:8.1.2020112401                                   8.1.2020112401
RHEL                      RedHat       8.1-ci                     RedHat:RHEL:8.1-ci:8.1.2021040801                                   8.1.2021040801
RHEL                      RedHat       8.1-ci                     RedHat:RHEL:8.1-ci:8.1.2021091103                                   8.1.2021091103
RHEL                      RedHat       8.1-ci                     RedHat:RHEL:8.1-ci:8.1.2022031401                                   8.1.2022031401
RHEL                      RedHat       8.2                        RedHat:RHEL:8.2:8.2.2020050811                                      8.2.2020050811
RHEL                      RedHat       8.2                        RedHat:RHEL:8.2:8.2.2020270811                                      8.2.2020270811
RHEL                      RedHat       8.2                        RedHat:RHEL:8.2:8.2.2021040911                                      8.2.2021040911
RHEL                      RedHat       8.2                        RedHat:RHEL:8.2:8.2.2021091101                                      8.2.2021091101
RHEL                      RedHat       8.2                        RedHat:RHEL:8.2:8.2.2022031401                                      8.2.2022031401
RHEL                      RedHat       81-ci-gen2                 RedHat:RHEL:81-ci-gen2:8.1.2020042524                               8.1.2020042524
RHEL                      RedHat       81-ci-gen2                 RedHat:RHEL:81-ci-gen2:8.1.2020082713                               8.1.2020082713
RHEL                      RedHat       81-ci-gen2                 RedHat:RHEL:81-ci-gen2:8.1.2020110712                               8.1.2020110712
RHEL                      RedHat       81-ci-gen2                 RedHat:RHEL:81-ci-gen2:8.1.2020112402                               8.1.2020112402
RHEL                      RedHat       81-ci-gen2                 RedHat:RHEL:81-ci-gen2:8.1.2021040802                               8.1.2021040802
RHEL                      RedHat       81-ci-gen2                 RedHat:RHEL:81-ci-gen2:8.1.2021091103                               8.1.2021091103
RHEL                      RedHat       81-ci-gen2                 RedHat:RHEL:81-ci-gen2:8.1.2022031402                               8.1.2022031402
RHEL                      RedHat       81gen2                     RedHat:RHEL:81gen2:8.1.2020020416                                   8.1.2020020416
RHEL                      RedHat       81gen2                     RedHat:RHEL:81gen2:8.1.2020082712                                   8.1.2020082712
RHEL                      RedHat       81gen2                     RedHat:RHEL:81gen2:8.1.2020110710                                   8.1.2020110710
RHEL                      RedHat       81gen2                     RedHat:RHEL:81gen2:8.1.2020112502                                   8.1.2020112502
RHEL                      RedHat       81gen2                     RedHat:RHEL:81gen2:8.1.2021040912                                   8.1.2021040912
RHEL                      RedHat       81gen2                     RedHat:RHEL:81gen2:8.1.2021091102                                   8.1.2021091102
RHEL                      RedHat       81gen2                     RedHat:RHEL:81gen2:8.1.2022031404                                   8.1.2022031404
RHEL                      RedHat       82gen2                     RedHat:RHEL:82gen2:8.2.2020050812                                   8.2.2020050812
RHEL                      RedHat       82gen2                     RedHat:RHEL:82gen2:8.2.2020082712                                   8.2.2020082712
RHEL                      RedHat       82gen2                     RedHat:RHEL:82gen2:8.2.2021040912                                   8.2.2021040912
RHEL                      RedHat       82gen2                     RedHat:RHEL:82gen2:8.2.2021091102                                   8.2.2021091102
RHEL                      RedHat       82gen2                     RedHat:RHEL:82gen2:8.2.2022031402                                   8.2.2022031402
RHEL                      RedHat       83-gen2                    RedHat:RHEL:83-gen2:8.3.2020111907                                  8.3.2020111907
RHEL                      RedHat       83-gen2                    RedHat:RHEL:83-gen2:8.3.2021040913                                  8.3.2021040913
RHEL                      RedHat       83-gen2                    RedHat:RHEL:83-gen2:8.3.2021091102                                  8.3.2021091102
RHEL                      RedHat       83-gen2                    RedHat:RHEL:83-gen2:8.3.2022011202                                  8.3.2022011202
RHEL                      RedHat       83-gen2                    RedHat:RHEL:83-gen2:8.3.2022031402                                  8.3.2022031402
RHEL                      RedHat       84-gen2                    RedHat:RHEL:84-gen2:8.4.2021053102                                  8.4.2021053102
RHEL                      RedHat       84-gen2                    RedHat:RHEL:84-gen2:8.4.2021081004                                  8.4.2021081004
RHEL                      RedHat       84-gen2                    RedHat:RHEL:84-gen2:8.4.2021091102                                  8.4.2021091102
RHEL                      RedHat       84-gen2                    RedHat:RHEL:84-gen2:8.4.2022031402                                  8.4.2022031402
RHEL                      RedHat       85-gen2                    RedHat:RHEL:85-gen2:8.5.2021121502                                  8.5.2021121502
RHEL                      RedHat       85-gen2                    RedHat:RHEL:85-gen2:8.5.2022031402                                  8.5.2022031402
RHEL                      RedHat       85-gen2                    RedHat:RHEL:85-gen2:8.5.2022032202                                  8.5.2022032202
RHEL                      RedHat       8_3                        RedHat:RHEL:8_3:8.3.2020111905                                      8.3.2020111905
RHEL                      RedHat       8_3                        RedHat:RHEL:8_3:8.3.2021041912                                      8.3.2021041912
RHEL                      RedHat       8_3                        RedHat:RHEL:8_3:8.3.2021091101                                      8.3.2021091101
RHEL                      RedHat       8_3                        RedHat:RHEL:8_3:8.3.2022011201                                      8.3.2022011201
RHEL                      RedHat       8_3                        RedHat:RHEL:8_3:8.3.2022031401                                      8.3.2022031401
RHEL                      RedHat       8_4                        RedHat:RHEL:8_4:8.4.2021053101                                      8.4.2021053101
RHEL                      RedHat       8_4                        RedHat:RHEL:8_4:8.4.2021081003                                      8.4.2021081003
RHEL                      RedHat       8_4                        RedHat:RHEL:8_4:8.4.2021091101                                      8.4.2021091101
RHEL                      RedHat       8_4                        RedHat:RHEL:8_4:8.4.2022031401                                      8.4.2022031401
RHEL                      RedHat       8_5                        RedHat:RHEL:8_5:8.5.2021121501                                      8.5.2021121501
RHEL                      RedHat       8_5                        RedHat:RHEL:8_5:8.5.2022031401                                      8.5.2022031401
RHEL                      RedHat       8_5                        RedHat:RHEL:8_5:8.5.2022032201                                      8.5.2022032201
rhel-byos                 RedHat       rhel-lvm74                 RedHat:rhel-byos:rhel-lvm74:7.4.20200824                            7.4.20200824
rhel-byos                 RedHat       rhel-lvm74                 RedHat:rhel-byos:rhel-lvm74:7.4.20210125                            7.4.20210125
rhel-byos                 RedHat       rhel-lvm75                 RedHat:rhel-byos:rhel-lvm75:7.5.20200824                            7.5.20200824
rhel-byos                 RedHat       rhel-lvm75                 RedHat:rhel-byos:rhel-lvm75:7.5.20210125                            7.5.20210125
rhel-byos                 RedHat       rhel-lvm76                 RedHat:rhel-byos:rhel-lvm76:7.6.20190530                            7.6.20190530
rhel-byos                 RedHat       rhel-lvm76                 RedHat:rhel-byos:rhel-lvm76:7.6.20210207                            7.6.20210207
rhel-byos                 RedHat       rhel-lvm76-gen2            RedHat:rhel-byos:rhel-lvm76-gen2:7.6.20200715                       7.6.20200715
rhel-byos                 RedHat       rhel-lvm76-gen2            RedHat:rhel-byos:rhel-lvm76-gen2:7.6.20210208                       7.6.20210208
rhel-byos                 RedHat       rhel-lvm77                 RedHat:rhel-byos:rhel-lvm77:7.7.20200402                            7.7.20200402
rhel-byos                 RedHat       rhel-lvm77                 RedHat:rhel-byos:rhel-lvm77:7.7.20200416                            7.7.20200416
rhel-byos                 RedHat       rhel-lvm77                 RedHat:rhel-byos:rhel-lvm77:7.7.20200823                            7.7.20200823
rhel-byos                 RedHat       rhel-lvm77                 RedHat:rhel-byos:rhel-lvm77:7.7.20201103                            7.7.20201103
rhel-byos                 RedHat       rhel-lvm77                 RedHat:rhel-byos:rhel-lvm77:7.7.20210125                            7.7.20210125
rhel-byos                 RedHat       rhel-lvm78                 RedHat:rhel-byos:rhel-lvm78:7.8.20200410                            7.8.20200410
rhel-byos                 RedHat       rhel-lvm78                 RedHat:rhel-byos:rhel-lvm78:7.8.20200823                            7.8.20200823
rhel-byos                 RedHat       rhel-lvm78                 RedHat:rhel-byos:rhel-lvm78:7.8.20201221                            7.8.20201221
rhel-byos                 RedHat       rhel-lvm78                 RedHat:rhel-byos:rhel-lvm78:7.8.20210125                            7.8.20210125
rhel-byos                 RedHat       rhel-lvm78-gen2            RedHat:rhel-byos:rhel-lvm78-gen2:7.8.20200715                       7.8.20200715
rhel-byos                 RedHat       rhel-lvm78-gen2            RedHat:rhel-byos:rhel-lvm78-gen2:7.8.20200824                       7.8.20200824
rhel-byos                 RedHat       rhel-lvm78-gen2            RedHat:rhel-byos:rhel-lvm78-gen2:7.8.20201222                       7.8.20201222
rhel-byos                 RedHat       rhel-lvm78-gen2            RedHat:rhel-byos:rhel-lvm78-gen2:7.8.20210126                       7.8.20210126
rhel-byos                 RedHat       rhel-lvm79                 RedHat:rhel-byos:rhel-lvm79:7.9.20210108                            7.9.20210108
rhel-byos                 RedHat       rhel-lvm79                 RedHat:rhel-byos:rhel-lvm79:7.9.20210125                            7.9.20210125
rhel-byos                 RedHat       rhel-lvm79-gen2            RedHat:rhel-byos:rhel-lvm79-gen2:7.9.20210107                       7.9.20210107
rhel-byos                 RedHat       rhel-lvm79-gen2            RedHat:rhel-byos:rhel-lvm79-gen2:7.9.20210126                       7.9.20210126
rhel-byos                 RedHat       rhel-lvm8                  RedHat:rhel-byos:rhel-lvm8:8.0.20200402                             8.0.20200402
rhel-byos                 RedHat       rhel-lvm8                  RedHat:rhel-byos:rhel-lvm8:8.0.20200831                             8.0.20200831
rhel-byos                 RedHat       rhel-lvm8                  RedHat:rhel-byos:rhel-lvm8:8.0.20210125                             8.0.20210125
rhel-byos                 RedHat       rhel-lvm8                  RedHat:rhel-byos:rhel-lvm8:8.0.20210409                             8.0.20210409
rhel-byos                 RedHat       rhel-lvm8                  RedHat:rhel-byos:rhel-lvm8:8.0.20220316                             8.0.20220316
rhel-byos                 RedHat       rhel-lvm8-gen2             RedHat:rhel-byos:rhel-lvm8-gen2:8.0.20200715                        8.0.20200715
rhel-byos                 RedHat       rhel-lvm8-gen2             RedHat:rhel-byos:rhel-lvm8-gen2:8.0.20200830                        8.0.20200830
rhel-byos                 RedHat       rhel-lvm8-gen2             RedHat:rhel-byos:rhel-lvm8-gen2:8.0.20210126                        8.0.20210126
rhel-byos                 RedHat       rhel-lvm8-gen2             RedHat:rhel-byos:rhel-lvm8-gen2:8.0.20210410                        8.0.20210410
rhel-byos                 RedHat       rhel-lvm8-gen2             RedHat:rhel-byos:rhel-lvm8-gen2:8.0.20220317                        8.0.20220317
rhel-byos                 RedHat       rhel-lvm81                 RedHat:rhel-byos:rhel-lvm81:8.1.20200402                            8.1.20200402
rhel-byos                 RedHat       rhel-lvm81                 RedHat:rhel-byos:rhel-lvm81:8.1.20200820                            8.1.20200820
rhel-byos                 RedHat       rhel-lvm81                 RedHat:rhel-byos:rhel-lvm81:8.1.20210125                            8.1.20210125
rhel-byos                 RedHat       rhel-lvm81                 RedHat:rhel-byos:rhel-lvm81:8.1.20210409                            8.1.20210409
rhel-byos                 RedHat       rhel-lvm81                 RedHat:rhel-byos:rhel-lvm81:8.1.20220316                            8.1.20220316
rhel-byos                 RedHat       rhel-lvm81-gen2            RedHat:rhel-byos:rhel-lvm81-gen2:8.1.20200715                       8.1.20200715
rhel-byos                 RedHat       rhel-lvm81-gen2            RedHat:rhel-byos:rhel-lvm81-gen2:8.1.20200821                       8.1.20200821
rhel-byos                 RedHat       rhel-lvm81-gen2            RedHat:rhel-byos:rhel-lvm81-gen2:8.1.20210126                       8.1.20210126
rhel-byos                 RedHat       rhel-lvm81-gen2            RedHat:rhel-byos:rhel-lvm81-gen2:8.1.20210410                       8.1.20210410
rhel-byos                 RedHat       rhel-lvm81-gen2            RedHat:rhel-byos:rhel-lvm81-gen2:8.1.20220317                       8.1.20220317
rhel-byos                 RedHat       rhel-lvm82                 RedHat:rhel-byos:rhel-lvm82:8.2.20200512                            8.2.20200512
rhel-byos                 RedHat       rhel-lvm82                 RedHat:rhel-byos:rhel-lvm82:8.2.20200820                            8.2.20200820
rhel-byos                 RedHat       rhel-lvm82                 RedHat:rhel-byos:rhel-lvm82:8.2.20210128                            8.2.20210128
rhel-byos                 RedHat       rhel-lvm82                 RedHat:rhel-byos:rhel-lvm82:8.2.20210410                            8.2.20210410
rhel-byos                 RedHat       rhel-lvm82                 RedHat:rhel-byos:rhel-lvm82:8.2.20220316                            8.2.20220316
rhel-byos                 RedHat       rhel-lvm82-gen2            RedHat:rhel-byos:rhel-lvm82-gen2:8.2.20200715                       8.2.20200715
rhel-byos                 RedHat       rhel-lvm82-gen2            RedHat:rhel-byos:rhel-lvm82-gen2:8.2.20200821                       8.2.20200821
rhel-byos                 RedHat       rhel-lvm82-gen2            RedHat:rhel-byos:rhel-lvm82-gen2:8.2.20210129                       8.2.20210129
rhel-byos                 RedHat       rhel-lvm82-gen2            RedHat:rhel-byos:rhel-lvm82-gen2:8.2.20210410                       8.2.20210410
rhel-byos                 RedHat       rhel-lvm82-gen2            RedHat:rhel-byos:rhel-lvm82-gen2:8.2.20220317                       8.2.20220317
rhel-byos                 RedHat       rhel-lvm83                 RedHat:rhel-byos:rhel-lvm83:8.3.20201109                            8.3.20201109
rhel-byos                 RedHat       rhel-lvm83                 RedHat:rhel-byos:rhel-lvm83:8.3.20210125                            8.3.20210125
rhel-byos                 RedHat       rhel-lvm83                 RedHat:rhel-byos:rhel-lvm83:8.3.20210409                            8.3.20210409
rhel-byos                 RedHat       rhel-lvm83                 RedHat:rhel-byos:rhel-lvm83:8.3.20220316                            8.3.20220316
rhel-byos                 RedHat       rhel-lvm83-gen2            RedHat:rhel-byos:rhel-lvm83-gen2:8.3.20201110                       8.3.20201110
rhel-byos                 RedHat       rhel-lvm83-gen2            RedHat:rhel-byos:rhel-lvm83-gen2:8.3.20210126                       8.3.20210126
rhel-byos                 RedHat       rhel-lvm83-gen2            RedHat:rhel-byos:rhel-lvm83-gen2:8.3.20210410                       8.3.20210410
rhel-byos                 RedHat       rhel-lvm83-gen2            RedHat:rhel-byos:rhel-lvm83-gen2:8.3.20220317                       8.3.20220317
rhel-byos                 RedHat       rhel-lvm84                 RedHat:rhel-byos:rhel-lvm84:8.4.2021053101                          8.4.2021053101
rhel-byos                 RedHat       rhel-lvm84                 RedHat:rhel-byos:rhel-lvm84:8.4.20220316                            8.4.20220316
rhel-byos                 RedHat       rhel-lvm84-gen2            RedHat:rhel-byos:rhel-lvm84-gen2:8.4.2021053102                     8.4.2021053102
rhel-byos                 RedHat       rhel-lvm84-gen2            RedHat:rhel-byos:rhel-lvm84-gen2:8.4.20220317                       8.4.20220317
rhel-byos                 RedHat       rhel-lvm85                 RedHat:rhel-byos:rhel-lvm85:8.5.20220316                            8.5.20220316
rhel-byos                 RedHat       rhel-lvm85-gen2            RedHat:rhel-byos:rhel-lvm85-gen2:8.5.20220317                       8.5.20220317
rhel-byos                 RedHat       rhel-raw-ci76              RedHat:rhel-byos:rhel-raw-ci76:7.6.20190814                         7.6.20190814
rhel-byos                 RedHat       rhel-raw69                 RedHat:rhel-byos:rhel-raw69:6.9.20181023                            6.9.20181023
rhel-byos                 RedHat       rhel-raw72                 RedHat:rhel-byos:rhel-raw72:7.2.20190807                            7.2.20190807
rhel-byos                 RedHat       rhel-raw75                 RedHat:rhel-byos:rhel-raw75:7.5.20190620                            7.5.20190620
rhel-byos                 RedHat       rhel-raw76                 RedHat:rhel-byos:rhel-raw76:7.6.20190307                            7.6.20190307
rhel-byos                 RedHat       rhel-raw76                 RedHat:rhel-byos:rhel-raw76:7.6.20190531                            7.6.20190531
rhel-byos                 RedHat       rhel-raw76                 RedHat:rhel-byos:rhel-raw76:7.6.20190620                            7.6.20190620
RHEL-HA                   RedHat       7.4                        RedHat:RHEL-HA:7.4:7.4.2019062021                                   7.4.2019062021
RHEL-HA                   RedHat       7.5                        RedHat:RHEL-HA:7.5:7.5.2019062021                                   7.5.2019062021
RHEL-HA                   RedHat       7.6                        RedHat:RHEL-HA:7.6:7.6.2019062019                                   7.6.2019062019
RHEL-HA                   RedHat       8.0                        RedHat:RHEL-HA:8.0:8.0.2020021914                                   8.0.2020021914
RHEL-HA                   RedHat       8.1                        RedHat:RHEL-HA:8.1:8.1.2020021914                                   8.1.2020021914
RHEL-HA                   RedHat       80-gen2                    RedHat:RHEL-HA:80-gen2:8.0.2020021915                               8.0.2020021915
RHEL-HA                   RedHat       81_gen2                    RedHat:RHEL-HA:81_gen2:8.1.2020021915                               8.1.2020021915
rhel-raw                  RedHat       7-raw                      RedHat:rhel-raw:7-raw:7.6.2021062301                                7.6.2021062301
rhel-raw                  RedHat       7-raw                      RedHat:rhel-raw:7-raw:7.7.2021062301                                7.7.2021062301
rhel-raw                  RedHat       7-raw                      RedHat:rhel-raw:7-raw:7.8.2021062301                                7.8.2021062301
rhel-raw                  RedHat       7-raw                      RedHat:rhel-raw:7-raw:7.9.2018100812                                7.9.2018100812
rhel-raw                  RedHat       7-raw                      RedHat:rhel-raw:7-raw:7.9.2021062301                                7.9.2021062301
rhel-raw                  RedHat       7-raw                      RedHat:rhel-raw:7-raw:7.9.2022032201                                7.9.2022032201
rhel-raw                  RedHat       7-raw-gen2                 RedHat:rhel-raw:7-raw-gen2:7.6.2021062302                           7.6.2021062302
rhel-raw                  RedHat       7-raw-gen2                 RedHat:rhel-raw:7-raw-gen2:7.7.2021062302                           7.7.2021062302
rhel-raw                  RedHat       7-raw-gen2                 RedHat:rhel-raw:7-raw-gen2:7.8.2021062302                           7.8.2021062302
rhel-raw                  RedHat       7-raw-gen2                 RedHat:rhel-raw:7-raw-gen2:7.9.2018100812                           7.9.2018100812
rhel-raw                  RedHat       7-raw-gen2                 RedHat:rhel-raw:7-raw-gen2:7.9.2021062302                           7.9.2021062302
rhel-raw                  RedHat       7-raw-gen2                 RedHat:rhel-raw:7-raw-gen2:7.9.2022032202                           7.9.2022032202
rhel-raw                  RedHat       76-gen2                    RedHat:rhel-raw:76-gen2:7.6.2021062302                              7.6.2021062302
rhel-raw                  RedHat       77-gen2                    RedHat:rhel-raw:77-gen2:7.7.2021062302                              7.7.2021062302
rhel-raw                  RedHat       7_6                        RedHat:rhel-raw:7_6:7.6.2021062301                                  7.6.2021062301
rhel-raw                  RedHat       7_7                        RedHat:rhel-raw:7_7:7.7.2021062301                                  7.7.2021062301
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.0.2021011801                                8.0.2021011801
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.0.2021091201                                8.0.2021091201
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.0.2022031405                                8.0.2022031405
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.1.2021011801                                8.1.2021011801
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.1.2021091203                                8.1.2021091203
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.1.2022031405                                8.1.2022031405
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.2.2021011801                                8.2.2021011801
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.2.2021091203                                8.2.2021091203
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.2.2022031405                                8.2.2022031405
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.3.2021011901                                8.3.2021011901
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.3.2021040901                                8.3.2021040901
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.3.2021091203                                8.3.2021091203
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.3.2022031405                                8.3.2022031405
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.4.2021053101                                8.4.2021053101
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.4.2021080901                                8.4.2021080901
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.4.2021081001                                8.4.2021081001
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.4.2021091203                                8.4.2021091203
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.4.2022031605                                8.4.2022031605
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.5.2022031405                                8.5.2022031405
rhel-raw                  RedHat       8-raw                      RedHat:rhel-raw:8-raw:8.5.2022032201                                8.5.2022032201
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.0.2021011802                           8.0.2021011802
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.0.2021091204                           8.0.2021091204
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.0.2022031406                           8.0.2022031406
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.1.2021011802                           8.1.2021011802
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.1.2021091204                           8.1.2021091204
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.1.2022031406                           8.1.2022031406
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.2.2021011802                           8.2.2021011802
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.2.2021091204                           8.2.2021091204
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.2.2022031406                           8.2.2022031406
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.3.2021011902                           8.3.2021011902
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.3.2021040902                           8.3.2021040902
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.3.2021091204                           8.3.2021091204
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.3.2022031406                           8.3.2022031406
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.4.2021053102                           8.4.2021053102
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.4.2021080902                           8.4.2021080902
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.4.2021081002                           8.4.2021081002
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.4.2021091204                           8.4.2021091204
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.4.2022031606                           8.4.2022031606
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.5.2022031406                           8.5.2022031406
rhel-raw                  RedHat       8-raw-gen2                 RedHat:rhel-raw:8-raw-gen2:8.5.2022032202                           8.5.2022032202
rhel-raw                  RedHat       80-gen2                    RedHat:rhel-raw:80-gen2:8.0.2021011902                              8.0.2021011902
rhel-raw                  RedHat       80-gen2                    RedHat:rhel-raw:80-gen2:8.0.2021040902                              8.0.2021040902
rhel-raw                  RedHat       80-gen2                    RedHat:rhel-raw:80-gen2:8.0.2021091202                              8.0.2021091202
rhel-raw                  RedHat       80-gen2                    RedHat:rhel-raw:80-gen2:8.0.2022031402                              8.0.2022031402
rhel-raw                  RedHat       81-gen2                    RedHat:rhel-raw:81-gen2:8.1.2021011902                              8.1.2021011902
rhel-raw                  RedHat       81-gen2                    RedHat:rhel-raw:81-gen2:8.1.2021040902                              8.1.2021040902
rhel-raw                  RedHat       81-gen2                    RedHat:rhel-raw:81-gen2:8.1.2021091202                              8.1.2021091202
rhel-raw                  RedHat       81-gen2                    RedHat:rhel-raw:81-gen2:8.1.2022031402                              8.1.2022031402
rhel-raw                  RedHat       82-gen2                    RedHat:rhel-raw:82-gen2:8.2.2021011902                              8.2.2021011902
rhel-raw                  RedHat       82-gen2                    RedHat:rhel-raw:82-gen2:8.2.2021040902                              8.2.2021040902
rhel-raw                  RedHat       82-gen2                    RedHat:rhel-raw:82-gen2:8.2.2021091202                              8.2.2021091202
rhel-raw                  RedHat       82-gen2                    RedHat:rhel-raw:82-gen2:8.2.2022031402                              8.2.2022031402
rhel-raw                  RedHat       83-gen2                    RedHat:rhel-raw:83-gen2:8.3.2021011902                              8.3.2021011902
rhel-raw                  RedHat       83-gen2                    RedHat:rhel-raw:83-gen2:8.3.2021040902                              8.3.2021040902
rhel-raw                  RedHat       83-gen2                    RedHat:rhel-raw:83-gen2:8.3.2021091202                              8.3.2021091202
rhel-raw                  RedHat       83-gen2                    RedHat:rhel-raw:83-gen2:8.3.2022031402                              8.3.2022031402
rhel-raw                  RedHat       84-gen2                    RedHat:rhel-raw:84-gen2:8.4.2021053102                              8.4.2021053102
rhel-raw                  RedHat       84-gen2                    RedHat:rhel-raw:84-gen2:8.4.2021080902                              8.4.2021080902
rhel-raw                  RedHat       84-gen2                    RedHat:rhel-raw:84-gen2:8.4.2021081002                              8.4.2021081002
rhel-raw                  RedHat       84-gen2                    RedHat:rhel-raw:84-gen2:8.4.2021091202                              8.4.2021091202
rhel-raw                  RedHat       84-gen2                    RedHat:rhel-raw:84-gen2:8.4.2022031402                              8.4.2022031402
rhel-raw                  RedHat       8_0                        RedHat:rhel-raw:8_0:8.0.2021011901                                  8.0.2021011901
rhel-raw                  RedHat       8_0                        RedHat:rhel-raw:8_0:8.0.2021040901                                  8.0.2021040901
rhel-raw                  RedHat       8_0                        RedHat:rhel-raw:8_0:8.0.2021091201                                  8.0.2021091201
rhel-raw                  RedHat       8_0                        RedHat:rhel-raw:8_0:8.0.2022031401                                  8.0.2022031401
rhel-raw                  RedHat       8_1                        RedHat:rhel-raw:8_1:8.1.2021011901                                  8.1.2021011901
rhel-raw                  RedHat       8_1                        RedHat:rhel-raw:8_1:8.1.2021040901                                  8.1.2021040901
rhel-raw                  RedHat       8_1                        RedHat:rhel-raw:8_1:8.1.2021091201                                  8.1.2021091201
rhel-raw                  RedHat       8_1                        RedHat:rhel-raw:8_1:8.1.2022031401                                  8.1.2022031401
rhel-raw                  RedHat       8_2                        RedHat:rhel-raw:8_2:8.2.2021011901                                  8.2.2021011901
rhel-raw                  RedHat       8_2                        RedHat:rhel-raw:8_2:8.2.2021040901                                  8.2.2021040901
rhel-raw                  RedHat       8_2                        RedHat:rhel-raw:8_2:8.2.2021091201                                  8.2.2021091201
rhel-raw                  RedHat       8_2                        RedHat:rhel-raw:8_2:8.2.2022031401                                  8.2.2022031401
rhel-raw                  RedHat       8_3                        RedHat:rhel-raw:8_3:8.3.2021011901                                  8.3.2021011901
rhel-raw                  RedHat       8_3                        RedHat:rhel-raw:8_3:8.3.2021040901                                  8.3.2021040901
rhel-raw                  RedHat       8_3                        RedHat:rhel-raw:8_3:8.3.2021091201                                  8.3.2021091201
rhel-raw                  RedHat       8_3                        RedHat:rhel-raw:8_3:8.3.2022031401                                  8.3.2022031401
rhel-raw                  RedHat       8_4                        RedHat:rhel-raw:8_4:8.4.2021053101                                  8.4.2021053101
rhel-raw                  RedHat       8_4                        RedHat:rhel-raw:8_4:8.4.2021080901                                  8.4.2021080901
rhel-raw                  RedHat       8_4                        RedHat:rhel-raw:8_4:8.4.2021081001                                  8.4.2021081001
rhel-raw                  RedHat       8_4                        RedHat:rhel-raw:8_4:8.4.2021091201                                  8.4.2021091201
rhel-raw                  RedHat       8_4                        RedHat:rhel-raw:8_4:8.4.2022031401                                  8.4.2022031401
RHEL-SAP                  RedHat       7.4                        RedHat:RHEL-SAP:7.4:7.4.2019060723                                  7.4.2019060723
RHEL-SAP                  RedHat       7.4                        RedHat:RHEL-SAP:7.4:7.4.2019062505                                  7.4.2019062505
RHEL-SAP                  RedHat       7.4                        RedHat:RHEL-SAP:7.4:7.4.20191212                                    7.4.20191212
RHEL-SAP                  RedHat       7.5                        RedHat:RHEL-SAP:7.5:7.5.2018102923                                  7.5.2018102923
RHEL-SAP                  RedHat       7.5                        RedHat:RHEL-SAP:7.5:7.5.2018112619                                  7.5.2018112619
RHEL-SAP                  RedHat       7.5                        RedHat:RHEL-SAP:7.5:7.5.2019060721                                  7.5.2019060721
RHEL-SAP                  RedHat       7.5                        RedHat:RHEL-SAP:7.5:7.5.2019062505                                  7.5.2019062505
RHEL-SAP                  RedHat       7.6                        RedHat:RHEL-SAP:7.6:7.6.2019071300                                  7.6.2019071300
RHEL-SAP                  RedHat       7.6                        RedHat:RHEL-SAP:7.6:7.6.20191212                                    7.6.20191212
RHEL-SAP                  RedHat       7.6                        RedHat:RHEL-SAP:7.6:7.6.2020022510                                  7.6.2020022510
RHEL-SAP                  RedHat       7.7                        RedHat:RHEL-SAP:7.7:7.7.2019082922                                  7.7.2019082922
RHEL-SAP                  RedHat       7.7                        RedHat:RHEL-SAP:7.7:7.7.20191212                                    7.7.20191212
RHEL-SAP                  RedHat       74sap-gen2                 RedHat:RHEL-SAP:74sap-gen2:7.4.20191214                             7.4.20191214
RHEL-SAP                  RedHat       76-ci                      RedHat:RHEL-SAP:76-ci:7.6.20200122                                  7.6.20200122
RHEL-SAP                  RedHat       76-ci-gen2                 RedHat:RHEL-SAP:76-ci-gen2:7.6.20200123                             7.6.20200123
RHEL-SAP                  RedHat       76sap-gen2                 RedHat:RHEL-SAP:76sap-gen2:7.6.20191214                             7.6.20191214
RHEL-SAP                  RedHat       76sap-gen2                 RedHat:RHEL-SAP:76sap-gen2:7.6.2020022511                           7.6.2020022511
RHEL-SAP                  RedHat       77sap-gen2                 RedHat:RHEL-SAP:77sap-gen2:7.7.20191214                             7.7.20191214
RHEL-SAP-APPS             RedHat       74sapapps-gen2             RedHat:RHEL-SAP-APPS:74sapapps-gen2:7.4.2020101118                  7.4.2020101118
RHEL-SAP-APPS             RedHat       74sapapps-gen2             RedHat:RHEL-SAP-APPS:74sapapps-gen2:7.4.2021051102                  7.4.2021051102
RHEL-SAP-APPS             RedHat       74sapapps-gen2             RedHat:RHEL-SAP-APPS:74sapapps-gen2:7.4.2021100402                  7.4.2021100402
RHEL-SAP-APPS             RedHat       76sapapps-gen2             RedHat:RHEL-SAP-APPS:76sapapps-gen2:7.6.2020101115                  7.6.2020101115
RHEL-SAP-APPS             RedHat       76sapapps-gen2             RedHat:RHEL-SAP-APPS:76sapapps-gen2:7.6.2021051102                  7.6.2021051102
RHEL-SAP-APPS             RedHat       76sapapps-gen2             RedHat:RHEL-SAP-APPS:76sapapps-gen2:7.6.2021100402                  7.6.2021100402
RHEL-SAP-APPS             RedHat       77sapapps-gen2             RedHat:RHEL-SAP-APPS:77sapapps-gen2:7.7.2020101117                  7.7.2020101117
RHEL-SAP-APPS             RedHat       77sapapps-gen2             RedHat:RHEL-SAP-APPS:77sapapps-gen2:7.7.2021051902                  7.7.2021051902
RHEL-SAP-APPS             RedHat       77sapapps-gen2             RedHat:RHEL-SAP-APPS:77sapapps-gen2:7.7.2021100402                  7.7.2021100402
RHEL-SAP-APPS             RedHat       79sapapps-gen2             RedHat:RHEL-SAP-APPS:79sapapps-gen2:7.9.2021040902                  7.9.2021040902
RHEL-SAP-APPS             RedHat       79sapapps-gen2             RedHat:RHEL-SAP-APPS:79sapapps-gen2:7.9.2021100402                  7.9.2021100402
RHEL-SAP-APPS             RedHat       7_4                        RedHat:RHEL-SAP-APPS:7_4:7.4.2020101117                             7.4.2020101117
RHEL-SAP-APPS             RedHat       7_4                        RedHat:RHEL-SAP-APPS:7_4:7.4.2021051101                             7.4.2021051101
RHEL-SAP-APPS             RedHat       7_4                        RedHat:RHEL-SAP-APPS:7_4:7.4.2021100401                             7.4.2021100401
RHEL-SAP-APPS             RedHat       7_6                        RedHat:RHEL-SAP-APPS:7_6:7.6.2020101114                             7.6.2020101114
RHEL-SAP-APPS             RedHat       7_6                        RedHat:RHEL-SAP-APPS:7_6:7.6.2021051101                             7.6.2021051101
RHEL-SAP-APPS             RedHat       7_6                        RedHat:RHEL-SAP-APPS:7_6:7.6.2021100401                             7.6.2021100401
RHEL-SAP-APPS             RedHat       7_7                        RedHat:RHEL-SAP-APPS:7_7:7.7.2020101116                             7.7.2020101116
RHEL-SAP-APPS             RedHat       7_7                        RedHat:RHEL-SAP-APPS:7_7:7.7.2021051901                             7.7.2021051901
RHEL-SAP-APPS             RedHat       7_7                        RedHat:RHEL-SAP-APPS:7_7:7.7.2021100401                             7.7.2021100401
RHEL-SAP-APPS             RedHat       7_9                        RedHat:RHEL-SAP-APPS:7_9:7.9.2021040901                             7.9.2021040901
RHEL-SAP-APPS             RedHat       7_9                        RedHat:RHEL-SAP-APPS:7_9:7.9.2021100401                             7.9.2021100401
RHEL-SAP-APPS             RedHat       81sapapps-gen2             RedHat:RHEL-SAP-APPS:81sapapps-gen2:8.1.2021012202                  8.1.2021012202
RHEL-SAP-APPS             RedHat       81sapapps-gen2             RedHat:RHEL-SAP-APPS:81sapapps-gen2:8.1.2021020502                  8.1.2021020502
RHEL-SAP-APPS             RedHat       81sapapps-gen2             RedHat:RHEL-SAP-APPS:81sapapps-gen2:8.1.2021091202                  8.1.2021091202
RHEL-SAP-APPS             RedHat       81sapapps-gen2             RedHat:RHEL-SAP-APPS:81sapapps-gen2:8.1.2022031402                  8.1.2022031402
RHEL-SAP-APPS             RedHat       82sapapps-gen2             RedHat:RHEL-SAP-APPS:82sapapps-gen2:8.2.2021012202                  8.2.2021012202
RHEL-SAP-APPS             RedHat       82sapapps-gen2             RedHat:RHEL-SAP-APPS:82sapapps-gen2:8.2.2021020502                  8.2.2021020502
RHEL-SAP-APPS             RedHat       82sapapps-gen2             RedHat:RHEL-SAP-APPS:82sapapps-gen2:8.2.2021040902                  8.2.2021040902
RHEL-SAP-APPS             RedHat       82sapapps-gen2             RedHat:RHEL-SAP-APPS:82sapapps-gen2:8.2.2021091202                  8.2.2021091202
RHEL-SAP-APPS             RedHat       82sapapps-gen2             RedHat:RHEL-SAP-APPS:82sapapps-gen2:8.2.2022031402                  8.2.2022031402
RHEL-SAP-APPS             RedHat       84sapapps-gen2             RedHat:RHEL-SAP-APPS:84sapapps-gen2:8.4.2021070802                  8.4.2021070802
RHEL-SAP-APPS             RedHat       84sapapps-gen2             RedHat:RHEL-SAP-APPS:84sapapps-gen2:8.4.2021080502                  8.4.2021080502
RHEL-SAP-APPS             RedHat       84sapapps-gen2             RedHat:RHEL-SAP-APPS:84sapapps-gen2:8.4.2021081002                  8.4.2021081002
RHEL-SAP-APPS             RedHat       84sapapps-gen2             RedHat:RHEL-SAP-APPS:84sapapps-gen2:8.4.2021091409                  8.4.2021091409
RHEL-SAP-APPS             RedHat       84sapapps-gen2             RedHat:RHEL-SAP-APPS:84sapapps-gen2:8.4.2022031402                  8.4.2022031402
RHEL-SAP-APPS             RedHat       8_1                        RedHat:RHEL-SAP-APPS:8_1:8.1.2021012201                             8.1.2021012201
RHEL-SAP-APPS             RedHat       8_1                        RedHat:RHEL-SAP-APPS:8_1:8.1.2021020501                             8.1.2021020501
RHEL-SAP-APPS             RedHat       8_1                        RedHat:RHEL-SAP-APPS:8_1:8.1.2021091201                             8.1.2021091201
RHEL-SAP-APPS             RedHat       8_1                        RedHat:RHEL-SAP-APPS:8_1:8.1.2022031401                             8.1.2022031401
RHEL-SAP-APPS             RedHat       8_2                        RedHat:RHEL-SAP-APPS:8_2:8.2.2020111501                             8.2.2020111501
RHEL-SAP-APPS             RedHat       8_2                        RedHat:RHEL-SAP-APPS:8_2:8.2.2021012201                             8.2.2021012201
RHEL-SAP-APPS             RedHat       8_2                        RedHat:RHEL-SAP-APPS:8_2:8.2.2021020501                             8.2.2021020501
RHEL-SAP-APPS             RedHat       8_2                        RedHat:RHEL-SAP-APPS:8_2:8.2.2021040901                             8.2.2021040901
RHEL-SAP-APPS             RedHat       8_2                        RedHat:RHEL-SAP-APPS:8_2:8.2.2021091201                             8.2.2021091201
RHEL-SAP-APPS             RedHat       8_2                        RedHat:RHEL-SAP-APPS:8_2:8.2.2022031401                             8.2.2022031401
RHEL-SAP-APPS             RedHat       8_4                        RedHat:RHEL-SAP-APPS:8_4:8.4.2021070801                             8.4.2021070801
RHEL-SAP-APPS             RedHat       8_4                        RedHat:RHEL-SAP-APPS:8_4:8.4.2021080501                             8.4.2021080501
RHEL-SAP-APPS             RedHat       8_4                        RedHat:RHEL-SAP-APPS:8_4:8.4.2021081001                             8.4.2021081001
RHEL-SAP-APPS             RedHat       8_4                        RedHat:RHEL-SAP-APPS:8_4:8.4.2021091410                             8.4.2021091410
RHEL-SAP-APPS             RedHat       8_4                        RedHat:RHEL-SAP-APPS:8_4:8.4.2022031401                             8.4.2022031401
RHEL-SAP-HA               RedHat       7.4                        RedHat:RHEL-SAP-HA:7.4:7.4.2019062018                               7.4.2019062018
RHEL-SAP-HA               RedHat       7.4                        RedHat:RHEL-SAP-HA:7.4:7.4.20191212                                 7.4.20191212
RHEL-SAP-HA               RedHat       7.4                        RedHat:RHEL-SAP-HA:7.4:7.4.2020071514                               7.4.2020071514
RHEL-SAP-HA               RedHat       7.4                        RedHat:RHEL-SAP-HA:7.4:7.4.2020082416                               7.4.2020082416
RHEL-SAP-HA               RedHat       7.4                        RedHat:RHEL-SAP-HA:7.4:7.4.2021051101                               7.4.2021051101
RHEL-SAP-HA               RedHat       7.5                        RedHat:RHEL-SAP-HA:7.5:7.5.2019062116                               7.5.2019062116
RHEL-SAP-HA               RedHat       7.6                        RedHat:RHEL-SAP-HA:7.6:7.6.2019062320                               7.6.2019062320
RHEL-SAP-HA               RedHat       7.6                        RedHat:RHEL-SAP-HA:7.6:7.6.20191212                                 7.6.20191212
RHEL-SAP-HA               RedHat       7.6                        RedHat:RHEL-SAP-HA:7.6:7.6.2020040209                               7.6.2020040209
RHEL-SAP-HA               RedHat       7.6                        RedHat:RHEL-SAP-HA:7.6:7.6.2020091012                               7.6.2020091012
RHEL-SAP-HA               RedHat       7.6                        RedHat:RHEL-SAP-HA:7.6:7.6.2021031517                               7.6.2021031517
RHEL-SAP-HA               RedHat       7.6                        RedHat:RHEL-SAP-HA:7.6:7.6.2021051101                               7.6.2021051101
RHEL-SAP-HA               RedHat       7.6                        RedHat:RHEL-SAP-HA:7.6:7.6.2021102501                               7.6.2021102501
RHEL-SAP-HA               RedHat       7.7                        RedHat:RHEL-SAP-HA:7.7:7.7.20191216                                 7.7.20191216
RHEL-SAP-HA               RedHat       7.7                        RedHat:RHEL-SAP-HA:7.7:7.7.2020040209                               7.7.2020040209
RHEL-SAP-HA               RedHat       7.7                        RedHat:RHEL-SAP-HA:7.7:7.7.2020062414                               7.7.2020062414
RHEL-SAP-HA               RedHat       7.7                        RedHat:RHEL-SAP-HA:7.7:7.7.2020082416                               7.7.2020082416
RHEL-SAP-HA               RedHat       7.7                        RedHat:RHEL-SAP-HA:7.7:7.7.2021051901                               7.7.2021051901
RHEL-SAP-HA               RedHat       74sapha-gen2               RedHat:RHEL-SAP-HA:74sapha-gen2:7.4.20191214                        7.4.20191214
RHEL-SAP-HA               RedHat       74sapha-gen2               RedHat:RHEL-SAP-HA:74sapha-gen2:7.4.20200716                        7.4.20200716
RHEL-SAP-HA               RedHat       74sapha-gen2               RedHat:RHEL-SAP-HA:74sapha-gen2:7.4.2020082418                      7.4.2020082418
RHEL-SAP-HA               RedHat       74sapha-gen2               RedHat:RHEL-SAP-HA:74sapha-gen2:7.4.2021051102                      7.4.2021051102
RHEL-SAP-HA               RedHat       76sapha-gen2               RedHat:RHEL-SAP-HA:76sapha-gen2:7.6.2020062416                      7.6.2020062416
RHEL-SAP-HA               RedHat       76sapha-gen2               RedHat:RHEL-SAP-HA:76sapha-gen2:7.6.2020091013                      7.6.2020091013
RHEL-SAP-HA               RedHat       76sapha-gen2               RedHat:RHEL-SAP-HA:76sapha-gen2:7.6.2021031519                      7.6.2021031519
RHEL-SAP-HA               RedHat       76sapha-gen2               RedHat:RHEL-SAP-HA:76sapha-gen2:7.6.2021051102                      7.6.2021051102
RHEL-SAP-HA               RedHat       76sapha-gen2               RedHat:RHEL-SAP-HA:76sapha-gen2:7.6.2021102502                      7.6.2021102502
RHEL-SAP-HA               RedHat       77sapha-gen2               RedHat:RHEL-SAP-HA:77sapha-gen2:7.7.2020062415                      7.7.2020062415
RHEL-SAP-HA               RedHat       77sapha-gen2               RedHat:RHEL-SAP-HA:77sapha-gen2:7.7.2020082417                      7.7.2020082417
RHEL-SAP-HA               RedHat       77sapha-gen2               RedHat:RHEL-SAP-HA:77sapha-gen2:7.7.2021051902                      7.7.2021051902
RHEL-SAP-HA               RedHat       79sapha-gen2               RedHat:RHEL-SAP-HA:79sapha-gen2:7.9.2021051502                      7.9.2021051502
RHEL-SAP-HA               RedHat       7_9                        RedHat:RHEL-SAP-HA:7_9:7.9.2021051501                               7.9.2021051501
RHEL-SAP-HA               RedHat       8.1                        RedHat:RHEL-SAP-HA:8.1:8.1.2020060412                               8.1.2020060412
RHEL-SAP-HA               RedHat       8.1                        RedHat:RHEL-SAP-HA:8.1:8.1.2021010601                               8.1.2021010601
RHEL-SAP-HA               RedHat       8.1                        RedHat:RHEL-SAP-HA:8.1:8.1.2021040901                               8.1.2021040901
RHEL-SAP-HA               RedHat       8.1                        RedHat:RHEL-SAP-HA:8.1:8.1.2021091201                               8.1.2021091201
RHEL-SAP-HA               RedHat       8.1                        RedHat:RHEL-SAP-HA:8.1:8.1.2022031401                               8.1.2022031401
RHEL-SAP-HA               RedHat       8.2                        RedHat:RHEL-SAP-HA:8.2:8.2.2020060412                               8.2.2020060412
RHEL-SAP-HA               RedHat       8.2                        RedHat:RHEL-SAP-HA:8.2:8.2.2021010601                               8.2.2021010601
RHEL-SAP-HA               RedHat       8.2                        RedHat:RHEL-SAP-HA:8.2:8.2.2021040901                               8.2.2021040901
RHEL-SAP-HA               RedHat       8.2                        RedHat:RHEL-SAP-HA:8.2:8.2.2021091201                               8.2.2021091201
RHEL-SAP-HA               RedHat       8.2                        RedHat:RHEL-SAP-HA:8.2:8.2.2022031401                               8.2.2022031401
RHEL-SAP-HA               RedHat       81sapha-gen2               RedHat:RHEL-SAP-HA:81sapha-gen2:8.1.2020060413                      8.1.2020060413
RHEL-SAP-HA               RedHat       81sapha-gen2               RedHat:RHEL-SAP-HA:81sapha-gen2:8.1.2021010602                      8.1.2021010602
RHEL-SAP-HA               RedHat       81sapha-gen2               RedHat:RHEL-SAP-HA:81sapha-gen2:8.1.2021040902                      8.1.2021040902
RHEL-SAP-HA               RedHat       81sapha-gen2               RedHat:RHEL-SAP-HA:81sapha-gen2:8.1.2021091202                      8.1.2021091202
RHEL-SAP-HA               RedHat       81sapha-gen2               RedHat:RHEL-SAP-HA:81sapha-gen2:8.1.2022031402                      8.1.2022031402
RHEL-SAP-HA               RedHat       82sapha-gen2               RedHat:RHEL-SAP-HA:82sapha-gen2:8.2.2020060413                      8.2.2020060413
RHEL-SAP-HA               RedHat       82sapha-gen2               RedHat:RHEL-SAP-HA:82sapha-gen2:8.2.2021010602                      8.2.2021010602
RHEL-SAP-HA               RedHat       82sapha-gen2               RedHat:RHEL-SAP-HA:82sapha-gen2:8.2.2021040902                      8.2.2021040902
RHEL-SAP-HA               RedHat       82sapha-gen2               RedHat:RHEL-SAP-HA:82sapha-gen2:8.2.2021091202                      8.2.2021091202
RHEL-SAP-HA               RedHat       82sapha-gen2               RedHat:RHEL-SAP-HA:82sapha-gen2:8.2.2022031402                      8.2.2022031402
RHEL-SAP-HA               RedHat       84sapha-gen2               RedHat:RHEL-SAP-HA:84sapha-gen2:8.4.2021070802                      8.4.2021070802
RHEL-SAP-HA               RedHat       84sapha-gen2               RedHat:RHEL-SAP-HA:84sapha-gen2:8.4.2021080502                      8.4.2021080502
RHEL-SAP-HA               RedHat       84sapha-gen2               RedHat:RHEL-SAP-HA:84sapha-gen2:8.4.2021081002                      8.4.2021081002
RHEL-SAP-HA               RedHat       84sapha-gen2               RedHat:RHEL-SAP-HA:84sapha-gen2:8.4.2021091202                      8.4.2021091202
RHEL-SAP-HA               RedHat       84sapha-gen2               RedHat:RHEL-SAP-HA:84sapha-gen2:8.4.2022031402                      8.4.2022031402
RHEL-SAP-HA               RedHat       8_4                        RedHat:RHEL-SAP-HA:8_4:8.4.2021070801                               8.4.2021070801
RHEL-SAP-HA               RedHat       8_4                        RedHat:RHEL-SAP-HA:8_4:8.4.2021080501                               8.4.2021080501
RHEL-SAP-HA               RedHat       8_4                        RedHat:RHEL-SAP-HA:8_4:8.4.2021081001                               8.4.2021081001
RHEL-SAP-HA               RedHat       8_4                        RedHat:RHEL-SAP-HA:8_4:8.4.2021091201                               8.4.2021091201
RHEL-SAP-HA               RedHat       8_4                        RedHat:RHEL-SAP-HA:8_4:8.4.2022031401                               8.4.2022031401
rhel-sig-publishing-test  RedHat       rhel77-sig-test            RedHat:rhel-sig-publishing-test:rhel77-sig-test:7.8.20210222        7.8.20210222
sp-test-oke-worker        RedHat       sp-test-oke-worker-a       RedHat:sp-test-oke-worker:sp-test-oke-worker-a:4.8.2021122100       4.8.2021122100
sp-test-oke-worker        RedHat       sp-test-oke-worker-a-gen1  RedHat:sp-test-oke-worker:sp-test-oke-worker-a-gen1:4.8.2021122100  4.8.2021122100
sp-test-oke-worker        RedHat       sp-test-oke-worker-b       RedHat:sp-test-oke-worker:sp-test-oke-worker-b:4.8.2021122100       4.8.2021122100
sp-test-oke-worker        RedHat       sp-test-oke-worker-b-gen1  RedHat:sp-test-oke-worker:sp-test-oke-worker-b-gen1:4.8.2021122100  4.8.2021122100
sp-test-oke-worker        RedHat       sp-test-oke-worker-c       RedHat:sp-test-oke-worker:sp-test-oke-worker-c:4.8.2021122100       4.8.2021122100
sp-test-oke-worker        RedHat       sp-test-oke-worker-c-gen1  RedHat:sp-test-oke-worker:sp-test-oke-worker-c-gen1:4.8.2021122100  4.8.2021122100
...
```

Running the previous command shows there are multiple "Offers" by the same *Publisher*. These offers are typically used to map different images to publisher's products. 

Some offerings are available only in specific Azure locations. To find out which Red Hat products are availailable in Western Europe datacenter run this:
```

$ az vm image list-offers -p redhat -l westeurope -o table
Location    Name
----------  --------------------
westeurope  RHEL
westeurope  rhel-byos
westeurope  RHEL-HA
westeurope  RHEL-SAP
westeurope  RHEL-SAP-APPS
westeurope  RHEL-SAP-HANA
```
You may or may not see additional testing and other offers depending on your subscription type. Those are not meant for normal use.

Red Hat offers mapped to use cases:

* RHEL --> PAYG/Pay-As-You-Go - normal RHEL VM
* rhel-byos --> BYOS/Bring-Your-Own-Subscription - normal RHEL VM
* RHEL-HA --> High Availability packages included
* RHEL-SAP --> certified for SAP applications
* RHEL-SAP-HANA --> certified for SAP Hana

If you would be moving existing RHEL VM's with paid Red Hat Subscriptions from on-prem to Azure, you would need to use the BYOS version. In this lab we will use the normal PAYG RHEL images.

To show details of a specific image:
```

$ az vm image show -l westeurope --urn RedHat:RHEL:7.6:latest
{
  "automaticOsUpgradeProperties": {
    "automaticOsUpgradeSupported": false
  },
  "dataDiskImages": [],
  "id": "/Subscriptions/59b082db-abf2-4a89-9703-5fe6e6adc608/Providers/Microsoft.Compute/Locations/westeurope/Publishers/RedHat/ArtifactTypes/VMImage/Offers/RHEL/Skus/7.6/Versions/7.6.2019052206",
  "location": "westeurope",
  "name": "7.6.2019052206",
  "osDiskImage": {
    "operatingSystem": "Linux",
    "sizeInGb": 32
  },
  "plan": null,
  "tags": null
}
```

The *id* field shows how the images are organized on Azure. Not very useful but still interesting information. :)


What's next?
===

Once this lab is completed, go back to [the agenda](README.md).
