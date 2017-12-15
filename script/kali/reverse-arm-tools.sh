#!/bin/bash

apt-get update
apt-get install -y python python-pip minicom flashrom openocd usbprog binwalk xxd dexdump hexedit qemu qemu-efi-arm qemu-system-arm radare2 gcc gcc-arm-none-eabi gdb binutils binutils-arm-linux-gnueabi binutils-arm-linux-gnueabi-dbg binutils-arm-none-eabi

pip install esptool
