#!/bin/bash

echo "Script ready for the Scriptkiddies!"

for file in /home/elliot/Documents/handshakes/*;do
	echo "Checking $file"
	s=$(echo 1 | aircrack-ng $file)
	if [[ "$s" =~ "No networks found" ]];then
		echo "$file faulty, deleting..."
		rm $file
	fi
done

