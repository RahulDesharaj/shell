#!/bin/bash
echo "display the top 5 cpu consuming process in linux server"

R="\e[31m"

G="\e[32m"

N="\e[0m"

MAX_CPU_USAGE=20

CPU_USAGE=$(top -bn1 | grep load | awk '{printf "%.0f\n", $(NF-2)}')


# if [ "$CPU_USAGE" -ge "$MAX_CPU_USAGE" ] ; 
# then
#     echo  -e "$R CPU usage is HIGH $N"
# else
#     echo  -e "$G CPU usage is NORMAL $N" 
# fi


while :
do
        sleep 5
        echo $CPU_USAGE
        if [ "$CPU_USAGE" -ge "$MAX_CPU_USAGE" ]
        then
        echo  -e "$R CPU usage is HIGH $N"
        fi

done