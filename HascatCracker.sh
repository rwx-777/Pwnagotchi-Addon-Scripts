#!/bin/bash

file="/home/elliot/Documents/handshakes/AndroidAP_9097f3655606.pcap.hccapx"

for dic in /media/elliot/TECH/LISTS/*;do
	echo "	cracking with $dic"
	hashcat -a 0 -m 2500 $file $dic
done
