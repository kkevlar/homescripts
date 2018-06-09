#!/bin/sh
echo "STARTING TUNNEL"
while :
    do
	ssh -nNR $1:127.0.0.1:$1 kevlar@159.65.72.181
done


