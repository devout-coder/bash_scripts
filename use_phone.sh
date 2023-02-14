#!/bin/bash

ip=`adb shell ip -f inet addr show | egrep -o '192.*/' | sed 's/.$//'`
if [ $ip != "adb: no devices/emulators found" ]
then  
	echo $ip>~/code_repo/bash_scripts/ip.txt
	adb tcpip 5555
	adb connect $ip:5555
	
else
	file="ip.txt"
	while read -r line; do
		adb connect $line:5555
	done <$file 
fi 
