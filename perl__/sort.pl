#!/usr/bin/perl

#the hash-bang command written on the first line indicates that this script
#will be run as a perl script

print "This is the 8th perl script in the perl tutorial series\n";

@colors = qw(red blue orange green yellow black velvet);
@num = qw(112 12 56 4 723 67 27 0 4 7 34);

print "The basic sort does not sort according to value but arranges the sorted element lexographically i.e. like in a dictionary look it up. It follows the ASCII table to sort \n";

@s_colors = sort @colors;
@s_num = sort @num;

print "Sorted alphabets and numbers \n @s_colors\n @s_num\n";
print "\n\n\u the  numbers are not sorted according to value by default syntax\n";
# To sort according to value we have to call spaceship fuction "$a<=>$b" which returns 1 if a>b -1 otherwise and 0 if both are same. usage show below to sort according to value

@ss_num = sort {$a<=>$b} @num;
print "\n\nSorted acc. to value using spaceship operator \"<=>\"\n @ss_num\n";
