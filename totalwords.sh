#!/bin/bash

echo "Enter the name"
read name

for i in $name
do
if [ -f $i ]
then 
wc=$(wc -w < "$i")
echo "Total number of words in a $i are $wc"
else
echo "$i not found"
fi
done
