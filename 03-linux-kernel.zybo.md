# Guide How to compile and install the Xilinx kernel with a linaro armhf toolchain in the Zybo board
    Adrian Remonda 2016

## Prerequisites

*   Linaro toolchain installed
*   Zybo with Linux running
*   If using Debian setup the tool chain as next [ Setup Toolchain in debian] (02-toolchain.md)
*   If using Ubuntu install the next packages:
    
```sh
~$ sudo apt-get install -y device-tree-compiler lzma lzop u-boot-tools 
~$ sudo apt-get install -y gcc-arm-linux-gnueabihf
```

## Download kernel sources

```sh
~$ LINUX_TAG=xilinx-v2016.4
~$ wget https://github.com/Xilinx/linux-xlnx/archive/${LINUX_TAG}.zip && unzip ${LINUX_TAG}.zip && cd linux-xlnx-${LINUX_TAG}
~$ git init
~$ git add .
~$ git commit -m "Linux vanilla"

```

### Set the compiler and add variables
```sh
~$ . ./export_me.sh
```    
-	To check the that the compiler was setup correctly:

```sh   
~$ ${CC}gcc --version
```    

### Get the config file

This file contains the linux configuration. Get the default

```sh    
~$ make xilinx_zynq_defconfig
```		
Configure the kernel (works with the default configuration)
```sh
~$ make menuconfig
```
			
### Device tree

Use the device tree in arch/arm/boot/dts/zynq-zed.dts or the one in the examples

~$ gedit arch/arm/boot/dts/zynq-7000.dts

Change the line "chosen" parameters as next:
```sh
chosen {
	bootargs = "console=ttyPS0,115200 root=/dev/mmcblk0p2 rw rootfstype=ext4 rootwait earlyprintk";
	linux,stdout-path = "/amba/serial@e0001000";
};
```

If needed, modify the file arch/arm/boot/dts/zynq-zybo.dts
To add new perhiperals edit the next file:

arch/arm/boot/dts/zynq-7000.dtsi
       
### Compile kernel modules and device tree

```sh
make zynq-zybo.dtb
make uImage -j4
make modules -j4
make modules_install INSTALL_MOD_PATH=./modules
```


## Deploy in the board

### Install remotely over SSH
```sh
scp arch/arm/boot/dts/zynq-zybo.dtb root@${ip}:${boot}/devicetree.dtb
scp arch/arm/boot/uImage root@$ip:${boot}
ssh root@$ip 'unlock'
rsync -avc modules/lib/. root@$ip:/lib/. && ssh root@$ip 'sync'
```   
    
### Local with an SD card reader

```sh
cp -v arch/arm/boot/dts/zynb-zybo.dtb /media/$USER/BOOT/devicetree.dtb
cp -v arch/arm/boot/uImage /media/$USER/BOOT
sudo rsync -avc modules/lib/. /media/$USER/rootfs/lib/.
sync

```   

### After the first boot

At the first access to the board command line update the module dependencies by typing this command:
~# depmod -a


## Misc
		
### How to Create parches
~$ git commit

~$ git format-patch -1 -o ../patches/		

### Apply patches
~$ patch -p1 < ../patches/ check patches

## TODO 

- Increase ram to 1G (0x40000000) arch/arm/boot/dts/zynq-zed.dts


