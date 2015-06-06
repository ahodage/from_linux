#!/bin/bash

#case statement usage
echo "Give a company name"
read company
echo "the website for $company is :"

case $company in
	google )
		echo "www.google.com" ;;
	yahoo )
		echo "www.yahoo.com" ;;
esac