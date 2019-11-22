#!/bin/bash

for f in handshakes/*;do
	s=$(echo 1 | aircrack-ng $f)
	rcode=$?
	echo doing $f
	if [ $rcode = 1 ];then
		sudo rm $f
	fi
done
