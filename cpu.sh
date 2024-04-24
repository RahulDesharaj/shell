#!/bin/bash
echo "display the top 5 cpu consuming process in linux server"

R="\e[31m"

G="\e[32m"

N="\e[0m"

CPU_USAGE=$(ps --sort=-pcpu | head -n 6)

MAX_CPU_USAGE=05
# Check if the CPU usage is above the threshold
#if [ $CPU_USAGE -ge $MAX_CPU_USAGE ]
if [ "$CPU_USAGE" -ge "$MAX_CPU_USAGE" ]
if [ $CPU_USAGE -gt 10 ]

then
    # Construct the message to send to Discord
    
    echo  -e "$R CPU usage is HIGH $N"
    exit 1
else
    
    echo  -e "$G CPU usage is NORMAL $N"

fi

