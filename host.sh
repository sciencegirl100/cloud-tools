#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
hostname $1
echo "127.0.0.1 $1" >> /etc/hosts
echo $1 > /etc/hostname
