#!/bin/sh



n1=$1
oper=$2
n2=$3

if [ "$oper" = "+" ]; then
	result=$(expr "$n1" + "$n2")
elif [ "$oper" = "-" ]; then
	result=$(expr "$n1" - "$n2")
	
fi

echo "$result"
