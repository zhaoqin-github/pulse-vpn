#!/bin/bash -e

/usr/local/pulse/PulseClient_x86_64.sh -h $VPNHOST -u $VPNUSER -p $VPNPASS -r Users

sleep 10

/usr/local/pulse/PulseClient_x86_64.sh -S
