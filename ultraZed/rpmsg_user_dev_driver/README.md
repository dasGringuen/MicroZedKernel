#How to compile the rpmsg_user_dev_driver

## Prerequisites
	see 05-linux-kernel.ultraZed.md

## Setup Makefile
	line 10: set IP address of ultraZed	
	line 12: set path to kernel dirictory 
	line 11: set path to module installation dirictory  

## Setup compiler path in export_me.sh
	line 2: set path	

## Compile
'''sh
. ./export_me.sh
make
'''

## Install module in board
'''sh
make install
'''
