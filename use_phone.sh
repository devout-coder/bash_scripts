# #!/usr/bin/bash

ip=$(adb shell ip -f inet addr show | egrep -o '192.*/' | sed 's/.$//')
adb tcpip 5555
echo $ip >> damn.txt
# ip=$(ifconfig | egrep -o 'broadcast 192.*' | egrep -o '[^broadcast ]' | tr -d '\n')
# ip=$(ifconfig | egrep -o 'broadcast 192.*')
# ip=$(adb shell ip -f inet addr show | egrep -o '192.*/' | sed 's/.$//')
# adb shell "ip -f inet addr show"
# echo $ip
adb connect $ip:5555