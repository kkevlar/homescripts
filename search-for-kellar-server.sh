#!/bin/sh

nmap -sn 192.168.1.0/24 | grep -e 'kellar' -e 'dell' -e 'server'


