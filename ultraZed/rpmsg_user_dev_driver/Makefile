# Makefile example
#   Adrian Remonda 2014

ifneq ($(KERNELRELEASE),)
	obj-m := rpmsg_user_dev_driver.o
	CFLAGS_test1.o := -DDEBUG
else
	obj-m := rpmsg_user_dev_driver.o
	TARGET_DIR = /lib/modules/$(KERNEL_VERSION)/kernel/drivers/rpmsg/
	PWD := $(shell pwd)

default:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) modules

clean:
	$(MAKE) -C $(KERNELDIR) M=$(PWD) clean

install:        
	scp *.ko root@$(ip):$(TARGET_DIR)

endif
