#! /bin/bash

#export CC=/opt/Xilinx/SDK/2017.1/gnu/aarch64/lin/aarch64-linux/bin/aarch64-linux-gnu- 
export CC=/media/DATOS/Xilinx/SDK/2017.1/gnu/aarch64/lin/aarch64-linux/bin/aarch64-linux-gnu- 

#export CC=aarch64-linux-gnu-
export CROSS_COMPILE=${CC}
export LOADADDR=0x10008000
export ARCH=arm64

#boot=/boot
boot=/media/BOOT
export ip=192.168.1.104



export KERNELDIR=$(cd ./linux-xlnx-xilinx-v2017.1/; pwd)
export KERNEL_VERSION=$(eval 'make -C ${KERNELDIR} kernelrelease --silent')
#export CROSS32CC=arm-linux-gnueabihf-gcc
