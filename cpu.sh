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

NUMBER=$(top -o cpu -n 5)

if [ $NUMBER -gt 10 ]
then
    echo  -e "$R CPU usage is HIGH $N"
else
    echo  -e "$G CPU usage is NORMAL $N" 
fi
