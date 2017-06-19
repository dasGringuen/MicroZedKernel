# Makefile example
#   Adrian Remonda 2014


ifneq ($(KERNELRELEASE),)
	obj-m := rpmsg_user_dev_driver.o
	CFLAGS_test1.o := -DDEBUG
else
	obj-m := rpmsg_user_dev_driver.o
	TARGET = 192.168.1.103
	TARGET_DIR = /lib/modules/4.9.0-00037-g5d029fd-dirty/kernel/drivers/rpmsg/
	KERNELDIR ?= ../../../../linux-xlnx/
	PWD := $(shell pwd)

default:
	$(MAKE) ARCH=arm64 CROSS_COMPILE=$(CC) -C $(KERNELDIR) M=$(PWD) modules

clean:
	$(MAKE) ARCH=arm64 CROSS_COMPILE=$(CC) -C $(KERNELDIR) M=$(PWD) clean

install:        
	scp *.ko root@$(TARGET):$(TARGET_DIR)

endif
