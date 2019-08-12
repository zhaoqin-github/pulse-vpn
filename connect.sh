#!/bin/bash -e

/usr/local/pulse/PulseClient_x86_64.sh -h $VPN_HOST -u $VPN_USER -p $VPN_PASS -r Users &

sleep 30

cat ~/.pulse_secure/pulse/pulsesvc.log

/usr/local/pulse/PulseClient_x86_64.sh -S

ping -c 3 10.250.13.69
