# Guide How to compile and install the Xilinx Linux Kernel in the ultraZed board
    Hochmüller Stephan 2017

## Prerequisites

*   Linaro toolchain 64bit installed
*   ultraZed with Linux running
*   If using Debian setup the tool chain as next [ Setup Toolchain in debian] (02-toolchain.md)

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
Configure the kernel (works with the default configuration)
```sh
~$ make menuconfig
```
			
### Device tree

use the device tree source file provided in /ultrZed and build it with the build_dts.sh script


To add new perhiperals edit the next file:

/ultraZed/petalinux_20171.dts
       
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
~$ scp arch/arm/boot/uImage root@$ip:${boot}
~$ ssh root@$ip 'unlock'
~$ rsync -avc modules/lib/. root@$ip:/lib/. && ssh root@$ip 'sync'
```   
    
### Local with an SD card reader

```sh
~$ cp -v scp <repo path>/ultrazed/system.dtb /media/$USER/BOOT/devicetree.dtb
~$ cp -v arch/arm/boot/uImage /media/$USER/BOOT
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


