#!/bin/sh
echo "STARTING TUNNEL"
while :
	do
	killall tunnel.sh
	kill -9 $(ps -aux | grep -e "tunnel.sh" | grep -v "repeat" | grep -v "grep" | grep -v "sublime" | grep -o "kevlar    ...." | egrep -o "[0-9]{4}")
	kill -9 $(ps -aux | grep -e "ssh -nNR" | grep -v "grep" | grep -o "kevlar    ...." | egrep -o "[0-9]{4}")
	./tunnel.sh $1
	killall tunnel.sh
	sleep 10
done


