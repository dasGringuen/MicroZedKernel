export CC=arm-linux-gnueabihf- 
export CROSS_COMPILE=${CC}
export LOADADDR=0x10008000
export ARCH=arm
export INSTALL_MOD_PATH=./modules

#boot=/boot
boot=/media/BOOT
export ip=192.168.1.104


export KERNELDIR=$(cd ./linux-xlnx-xilinx-v2017.1/; pwd)
export KERNEL_VERSION=$(eval 'make -C ${KERNELDIR} kernelrelease --silent')
#export CROSS32CC=arm-linux-gnueabihf-gcc

