#!/bin/bash

apt-get update
apt-get install -y python python-pip minicom flashrom openocd usbprog avrdude
apt-get install -y binwalk xxd dexdump hexedit
apt-get install -y gcc gcc-arm-none-eabi gdb radare2 qemu
apt-get install -y binutils binutils-arm-linux-gnueabi binutils-arm-linux-gnueabi-dbg binutils-arm-none-eabi

pip install esptool ropgadget
