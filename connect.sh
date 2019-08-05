#!/bin/bash -e

/usr/local/pulse/PulseClient_x86_64.sh -h $VPN_HOST -u $VPN_USER -p $VPN_PASS -r Users

sleep 10

/usr/local/pulse/PulseClient_x86_64.sh -S

ping -c 3 $OS_HOST
