#!/bin/bash

mkdir Delta-SysAd-Task1
cd Delta-SysAd-Task1

for i in {1..100}
do

dd if=/dev/zero of=file$i bs=16 count=639
random_string=$(cat /dev/urandom | tr -dc [:alpha:][:digit:] | fold -w 16 | head -n 1)
echo $random_string >> file$i

done

touch -am -d "2 days ago" *
chmod 444 *
