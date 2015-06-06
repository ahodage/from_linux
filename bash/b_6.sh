#!/bin/bash


#testing else if  usage in bash

echo "Provide the input"

read input

if [ $input == twitter ]
	then 
		echo "Cannot ping to this website"
	elif [ $input == google ]
		then
		echo "Google ping accepted.Starting the ping :"
		ping -c3 www.google.com
	else
		ping -c4 www.yahoo.com
		printf '\n\n\n Adding cushion between stuff\n\n'
		ping -c1 www.facebook.com

fi