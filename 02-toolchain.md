# Toolchain setup for cross-compiling in Debian Jessie

Tool chain setup for armhf (hardware floating point support)

## Background

https://wiki.debian.org/ArmHardFloatPort


## Install Toolchain from the repositories

armhf compiler on Debian Jessie

These packages did not make it into Jessie so you need to install them from the 
Debian Cross-toolchains repository. Create /etc/apt/sources.list.d/crosstools.list containing:

    deb http://emdebian.org/tools/debian/ jessie main

You will need the archive key installed

    curl http://emdebian.org/tools/debian/emdebian-toolchain-archive.key | sudo apt-key add -

Then install crossbuild-essential-armhf

    sudo dpkg --add-architecture armhf
    sudo apt-get update
    sudo apt-get install crossbuild-essential-armhf

    sudo dpkg --add-architecture i386
    sudo apt-get update
    sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 zlib1g:i386 
    sudo apt-get install u-boot-tools    
    

Test

    ~$ ${CC}gcc --version
    arm-linux-gnueabihf-gcc (crosstool-NG linaro-1.13.1-4.9-2014.09 - Linaro GCC 4.9-2014.09) 4.9.2 20140904 (prerelease)
    Copyright (C) 2014 Free Software Foundation, Inc.
    This is free software; see the source for copying conditions.  There is NO
    warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

To export it permanently
  
    ~$ echo "export PATH=~/toolchains/gcc-linaro-arm-linux-gnueabihf-4.9-2014.09_linux/bin:$PATH" >> ~/.bashrc


## Cross-compile and run it

Compile a hello world

    ~$ ${CC}gcc main.c -o hello.elf
    

Copy the hello world in your board:

    ~$ scp hello.elf root@192.168.1.103:/root
    ~$ ssh root@192.168.1.103

    microZed#
    microZed# cd /root
    microZed# ./hello.elf
    
## To test

When you are not sure if the elf was compiled with an armel or armhf toolchain you can test it as next:
(https://blogs.oracle.com/jtc/entry/is_it_armhf_or_armel)
    
    readelf -A /proc/self/exe | grep Tag_ABI_VFP_args

For checking the compiler

    gcc -dumpmachine    
