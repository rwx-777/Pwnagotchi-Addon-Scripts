#!/bin/bash

for file in handshakes/*;do
	echo doing $file
	s=$(echo 1 | aircrack-ng $file) #echo 1 for the input when needed
	rcode=$? #checks the recieve code
	if [ $rcode = 1 ];then
		sudo rm $file #deletes empty pccap files
	else 
		for dic in /root/wordlists/*;do #open every file from handshakes with every wordlist
			echo "	cracking with $dic"
			echo aircrack-ng $file -w $dic
		done
	fi
done
