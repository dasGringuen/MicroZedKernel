# Makefile example
#   Adrian Remonda 2014

ifneq ($(KERNELRELEASE),)
	obj-m := hello.o
	CFLAGS_hello.o := -DDEBUG
else
	obj-m := hello.o
	TARGET = 192.168.1.103
	TARGET_DIR = /root
	KERNELDIR ?= ~/src/zynq/kernel/linux-xlnx
	PWD := $(shell pwd)

default:
	$(MAKE) ARCH=arm CROSS_COMPILE=$(CC) -C $(KERNELDIR) M=$(PWD) modules

clean:
	$(MAKE) ARCH=arm CROSS_COMPILE=$(CC) -C $(KERNELDIR) M=$(PWD) clean

install:        
	scp *.ko root@$(TARGET):$(TARGET_DIR)

endif


