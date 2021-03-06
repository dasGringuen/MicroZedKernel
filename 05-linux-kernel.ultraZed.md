# Guide How to compile and install the Xilinx Linux Kernel in the ultraZed board
    Hochmüller Stephan 2017

## Prerequisites

*   Linaro toolchain 64bit installed
*   ultraZed with Linux running
*	arm 64bit compiler:
	*   If using Debian or Ubuntu setup the tool chain as next [ Setup Toolchain in debian] (02-toolchain.md)
	or
	*   Directly Linaro toolchain 64bit

Note: with Debian Jessie the Kernel doesn't compile, test with Debian Stretch

## Download kernel sources

```sh
~$ LINUX_TAG=xilinx-v2017.1
~$ wget https://github.com/Xilinx/linux-xlnx/archive/${LINUX_TAG}.zip && unzip ${LINUX_TAG}.zip && cd linux-xlnx-${LINUX_TAG}
~$ git init
~$ git add .
~$ git commit -m "Linux vanilla"

```

### Set the compiler and add variables
```sh
~$ . ./export_me_ultraZed.sh
```    
To check the that the compiler was setup correctly:

```sh   
~$ ${CC}gcc --version
```    

### Get the config file

This file contains the linux configuration. Get the default

```sh    
~$ make xilinx_zynqmp_defconfig
```	

### Configure the kernel 
```sh
~$ make menuconfig
```
	to configure OpenAMP ensure that the following module is enabled:
		Device Driver
		|
		---> Remoteproc drivers
			|
			--->ZynqMP_r5 remoteproc support
	
Note: The Rpmsg driver is also needed. If the drivers are enabled in kernel configuration an error gets obtained at branch 2017.1. To still get the module compiled the rpmsg_user_dev_driver from https://github.com/Xilinx/meta-openamp/blob/rel-v2017.1/recipes-kernel/rpmsg-user-module/files/rpmsg_user_dev_driver.c can be used. The module and a makefile is given in /ultrazed/rpmsg_user_dev_driver.
	

			
### Device tree

use the device tree source file provided in /ultrZed/device_tree and build it with the build_dts.sh script



       
### Compile kernel modules and device tree

```sh
~$ make Image -j4
~$ make modules -j4
~$ make modules_install INSTALL_MOD_PATH=./modules
```


## Deploy in the board

### Install remotely over SSH
```sh
~$ scp <repo path>/ultrazed/system.dtb root@${ip}:${boot}/devicetree.dtb
~$ scp arch/arm64/boot/Image root@$ip:${boot}
~$ ssh root@$ip 'unlock'
~$ rsync -avc modules/lib/. root@$ip:/lib/. && ssh root@$ip 'sync'
```   
    
### Local with an SD card reader

```sh
~$ cp -v scp <repo path>/ultrazed/system.dtb /media/$USER/BOOT/devicetree.dtb
~$ cp -v arch/arm64/boot/Image /media/$USER/BOOT
~$ sudo rsync -avc modules/lib/. /media/$USER/rootfs/lib/.
~$ sync

```   

### After the first boot

At the first access to the board command line update the module dependencies by typing this command:
```sh
~# depmod -a
```

## Misc
		
### How to Create parches
```sh
~$ git commit

~$ git format-patch -1 -o ../patches/		
```

### Apply patches
```sh
~$ patch -p1 < ../patches/ check patches
```


