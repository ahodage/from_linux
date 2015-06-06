#!/bin/bash


#testing if else usage in bash

echo "Provide the input"

read input

if [ $input == twitter ]
	then 
		echo "Cannot ping to this website"
	else
		ping -c3 www.google.com
		ping -c4 www.yahoo.com

fi