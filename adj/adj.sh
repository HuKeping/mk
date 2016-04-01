#! /bin/bash

# Let's pick up one number in (0,length]
LINES=$(cat $1 | wc -l)
RAND=$(date +%s%N)
NUM=$(($RAND % $LINES))

# Wanna be 0? No way :)
if [ $NUM -eq 0 ]; then
	NUM=1
fi

# Here we go, get the adj we want. OK OK, as the god wishes. 
ADJ=$(cat $1 | sed -n ${NUM}p)

echo $ADJ
