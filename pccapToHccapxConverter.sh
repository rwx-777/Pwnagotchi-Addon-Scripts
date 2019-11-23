#!/bin/bash

#echo mkdir /home/elliot/Documents/handshakesHashcat
#echo mkdir /home/elliot/Documents/handshakes/New
for file in /home/elliot/Documents/handshakes/*;do
	echo converting file
	cap2hccapx $file $file.hccapx
done
