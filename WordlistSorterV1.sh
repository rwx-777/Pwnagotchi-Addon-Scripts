#!/bin/bash

file=$1
p=/Users/joshua/Documents/wpa2-wordlists/PlainText
echo "Starting Sorting of $file"


echo "Deleting Duplicates..."

awk '!a[$0]++' $p/$file > $p/$2

OriginalFile=$(cat $p/$file | wc -l)
NewFile=$(cat $p/$2 | wc -l)
WordsDel=$(($OriginalFile-$NewFile))

echo "Delted $WordsDel words from $file"
 
