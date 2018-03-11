#!/bin/bash

for next in `ls $1`
do
	var=${next##*.}
	if [ $var != "$next" ]
	then
			mkdir $var
			mv $next $var
	fi
	
done

