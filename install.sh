#!/bin/bash
VER="1.0"
MODULE="metaboxfan"
#KVERSION = $(shell uname -r)
KVERSION="6.14.9-arch1-1"
sudo mkdir /usr/src/$MODULE-$VER
sudo cp -Rv . /usr/src/$MODULE-$VER
sudo dkms add -m $MODULE -v $VER -k $KVERSION
sudo dkms build -m $MODULE -v $VER -k $KVERSION
sudo dkms install -m $MODULE -v $VER -k $KVERSION
sudo modprobe $MODULE
sudo lsmod | grep $MODULE


