#!/bin/bash

ip=$(adb shell ip -f inet addr show | egrep -o '192.*/' | sed 's/.$//')
adb tcpip 5555  
adb connect $ip:5555  