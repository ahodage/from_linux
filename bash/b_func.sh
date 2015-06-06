#!/bin/bash

#usageof functions in bash

function hello
{
	echo "hello guys"
}

function ping_google
{
	ping -c4 www.google.com
}

printf "\n\n\n"
hello
printf "\n\ncushion between stuff\n\n\n"
ping_google
