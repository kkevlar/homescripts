#!/bin/sh
echo "STARTING TUNNEL"
ssh -nNR $1:127.0.0.1:$1 kevlar@159.65.72.181

