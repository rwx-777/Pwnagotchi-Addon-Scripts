#!/bin/bash

file=$1

for dic in /media/elliot/TECH/LISTS/*;do
	echo "	cracking with $dic"
	hashcat -a 0 -m 2500 $file $dic
done
