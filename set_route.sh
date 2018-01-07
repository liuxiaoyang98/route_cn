#!/bin/sh

# openwrt 	请自行修改以适合您的环境和需要

while read a
do
echo $a
ip route add $a dev pppoe-wan
done <ip_cn.txt

