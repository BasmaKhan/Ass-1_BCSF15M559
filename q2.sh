#!/bin/bash
even_odd ()
{
if [ -s $1 ]
then
	IFS=$'\n'
	c=1
	for i in `cat $1`
	do
	if [ $c -eq 1 ]
	then
		echo `echo $i >> oddfile`
		c=`expr $c + 1`
	else
		echo `echo $i >> evenfile`
		c=`expr $c - 1`
	fi
	done
else
	echo "The file is empty or doesn't exsits"
fi 
}
even_odd $1
