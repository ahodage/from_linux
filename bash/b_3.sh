#!/bin/bash

#whats ping


#takes target from user as argument and pings it as 3 packets

ping -c3 -a $1 >ping_data.txt
