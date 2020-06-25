#!/bin/sh
echo "STARTING TUNNEL"
while :
	do
	./tunnel.sh $1
	killall tunnel.sh
	sleep 10
done


