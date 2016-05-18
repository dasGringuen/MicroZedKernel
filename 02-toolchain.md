Toolchain setup for the cross compiling
=====================================

Tool chain setup for armhf (hardware floating point support)

Background
----------

https://wiki.debian.org/ArmHardFloatPort


Toolchain from Linaro
---------------------
        


- In debian or Ubuntu install the next packages:

    ~$ sudo dpkg --add-architecture i386
    ~$ sudo apt-get update
    ~$ sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 zlib1g:i386 

1) The first step is to have a linux running in your MicroZed

- Download/Extract:

    ~$ cd
    ~$ mkdir toolchains
    ~$ cd toolchains
    ~$ wget -c https://releases.linaro.org/14.09/components/toolchain/binaries/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux.tar.xz
    ~$ tar xf gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux.tar.xz
    ~$ export CC=~/toolchains/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/bin/arm-linux-gnueabihf-
    
- Or if you have added already the path in .bashrc

    ~$ export CC=arm-linux-gnueabihf-

- Test:
    
    ~$ ${CC}gcc --version
    arm-linux-gnueabihf-gcc (crosstool-NG linaro-1.13.1-4.9-2014.09 - Linaro GCC 4.9-2014.09) 4.9.2 20140904 (prerelease)
    Copyright (C) 2014 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

-  To export it permanently:
  
    ~$ echo "export PATH=~/toolchains/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/bin:$PATH" >> ~/.bashrc

-   compile a hello world

    ~$ ${CC}gcc main.c -o hello.elf

2)	The second is to crosscompile an user space program and run it in your board

    copy the hello world in your board:
    ---------------------------------

    copy the elf file in your board:
    ~$ scp hello.elf root@192.168.1.103:/root
    ~$ ssh root@192.168.1.103

    microZed# now we are in the Zed
    microZed# cd /root
    microZed# ./hello.elf
    
    
Optinal use the toolchain from the package manager
=================================================



Install armhf compiler on Debian
--------------------------

- Sources:
    
    https://wiki.debian.org/CrossToolchains


- These packages did not make it into Jessie so you need to install them from the 
  Debian Cross-toolchains repository. Create /etc/apt/sources.list.d/crosstools.list containing:

    deb http://emdebian.org/tools/debian/ jessie main

- You will need the archive key installed

    curl http://emdebian.org/tools/debian/emdebian-toolchain-archive.key | sudo apt-key add -

- Then install crossbuild-essential-armhf

    sudo dpkg --add-architecture armhf
    sudo apt-get update
    sudo apt-get install crossbuild-essential-armhf
    
    
To test
-----
    
# to check if the tool chain is armel or armhf	(https://blogs.oracle.com/jtc/entry/is_it_armhf_or_armel)
readelf -A /proc/self/exe | grep Tag_ABI_VFP_args

# util for checking the compiler
gcc -dumpmachine    
