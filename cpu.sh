#!/bin/bash
echo "display the top 5 cpu consuming process in linux server"

R="\e[31m"

G="\e[32m"

N="\e[0m"

#CPU_USAGE=$(ps --sort=-pcpu | head -n 6)


# if [ $CPU_USAGE -gt 10 ]

# then
#     # Construct the message to send to Discord
    
#     echo  -e "$R CPU usage is HIGH $N"
#     exit 1
# else
    
#     echo  -e "$G CPU usage is NORMAL $N"

# fi

CPU_USAGE=$(ps | head -n 5)

MAX_CPU_USAGE=20

#if [ $NCPU_USAGE -gt 10 ]
if [ "$CPU_USAGE" -ge "$MAX_CPU_USAGE" ] ; 
then
    echo  -e "$R CPU usage is HIGH $N"
else
    echo  -e "$G CPU usage is NORMAL $N" 
fi
