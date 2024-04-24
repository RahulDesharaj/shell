#!/bin/bash
echo "display the top 5 cpu consuming process in linux server"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 5

# Set the Discord webhook URL
 

MAX_CPU_USAGE=40

while true; do
  # Get the current CPU usage
  #CPU_USAGE=$(grep 'cpu' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}')
  CPU_USAGE=$(top -bn2 | grep '%Cpu' | tail -1 | grep -P '(....|...) id,'|awk '{print 100-$8}')

  # Check if the CPU usage is above the threshold
  if [ "$CPU_USAGE" -ge "$MAX_CPU_USAGE" ] ; then
    # Construct the message to send to Discord
    MESSAGE="CPU usage is HIGH"

    # Send the message to Discord using the webhook
    curl -H "Content-Type: application/json" -X POST -d "{\"content\":\"$MESSAGE\"}" $WEBHOOK_URL
  fi

  # Sleep for half a minute before checking again
  sleep 30
done