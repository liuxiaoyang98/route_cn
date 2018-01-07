#!/bin/bash
wget http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-latest -O - |grep ipv4 |grep CN  |awk -F\| '{print $4" "$5}' >ip_cn.txt
sed -i "s/ 256$/\/24/g" ip_cn.txt
sed -i "s/ 512$/\/23/g" ip_cn.txt
sed -i "s/ 1024$/\/22/g" ip_cn.txt
sed -i "s/ 2048$/\/21/g" ip_cn.txt
sed -i "s/ 4096$/\/20/g" ip_cn.txt
sed -i "s/ 8192$/\/19/g" ip_cn.txt
sed -i "s/ 16384$/\/18/g" ip_cn.txt
sed -i "s/ 32768$/\/17/g" ip_cn.txt
sed -i "s/ 65536$/\/16/g" ip_cn.txt
sed -i "s/ 131072$/\/15/g" ip_cn.txt
sed -i "s/ 262144$/\/14/g" ip_cn.txt
sed -i "s/ 524288$/\/13/g" ip_cn.txt
sed -i "s/ 1048576$/\/12/g" ip_cn.txt
sed -i "s/ 2097152$/\/11/g" ip_cn.txt
sed -i "s/ 4194304$/\/10/g" ip_cn.txt
