
cat /sys/class/power_supply/BAT0/capacity
# if(cat /sys/class/power_supply/BAT0/capacity <= 87)
battery_percentage=$(cat /sys/class/power_supply/BAT0/capacity)
battery_status=$(acpi -b | grep -oP '(?<=: ).*?(?=,)')
if [[ battery_percentage -le 5 && "$battery_status" == "Discharging" ]]; then
    # Send a notification
    notify-send "battery super low, plug in if you don't want your laptop to shut off dumbass"
fi
message1="script run at $(date)"
message2="battery status $(acpi -b | grep -oP '(?<=: ).*?(?=,)' )"
echo $message2 >> ~/code_repo/bash_scripts/logs/battery_logs.log
echo $message1 >> ~/code_repo/bash_scripts/logs/battery_logs.log

# battery_info=$(acpi -b)
# battery_percentage=$(echo "$battery_info" | grep -oP '\d+(?=%)')
# battery_status=$(echo "$battery_info" | grep -oP '(?<=: ).*?(?=,)')
# charging_status=$(echo "$battery_info" | grep -oP '(?<=: ).*(?=, charging)')
#
# if [[ $battery_percentage -lt 35 && $battery_status == "Discharging" && $charging_status == "" ]]; then
#     echo "Battery level is below 5% and it's discharging."
#     # Add your desired actions here
# else
#     echo "Battery level is not below 5% or it's not discharging."
#     # Add other actions here if needed
# fi
#
# echo $message >> ~/code_repo/bash_scripts/logs/battery_logs.log
