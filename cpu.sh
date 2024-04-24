#!/bin/bash
echo "display the top 5 cpu consuming process in linux server"
CPU_USAGE=$(ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 5)

MAX_CPU_USAGE=40
# Check if the CPU usage is above the threshold
if [ "$CPU_USAGE" -ge "$MAX_CPU_USAGE" ]  
then
    # Construct the message to send to Discord
    MESSAGE=" CPU usage is HIGH "
    exit 1
else
    echo " CPU usage is NORMAL "

fi

