#!/usr/bin/perl

use warnings;
use strict;

my $a ="00100111";
my $b = "10100000";

my$a1 = $a & $b;
my$a2 = $a | $b; 
my$a3 = $a ^ $b; 
my$a4 = ~$a; 
my$a5 = $a << 3; 
my$a6 = $a >> 3; 

printf " $a AND $b = %b\n ",$a1;
printf " $a OR $b = %b\n",$a2; 
printf " $a XOR $b = %b\n ",$a3; 
printf " $a CMP = %b\n ",$a4; 
printf " $a LSHIFT 3 = %b\n ",$a5; 
printf" $a RSHIFT 3 = %b\n",$a6; 



 
