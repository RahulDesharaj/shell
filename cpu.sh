#!/bin/bash
echo "display the top 5 cpu consuming process in linux server"

R="\e[31m"

G="\e[32m"

N="\e[0m"

CPU_USAGE=$(ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 5)

MAX_CPU_USAGE=90
# Check if the CPU usage is above the threshold
if [ $CPU_USAGE" -ge  "$MAX_CPU_USAGE ] 
then
    # Construct the message to send to Discord
    
    echo  -e "$R CPU usage is HIGH $N"
    exit 1
else
    
    echo  -e "$G CPU usage is NORMAL $N"

fi

