#!/usr/bin/perl

use warnings;
use strict;

#this script converts a give list into an string

#my @lst =("a","b",'h','i','s','h','e','k'); 
my @lst = (1,1,1,1);
my @r_lst = reverse(@lst);
my $str = join("",@lst);
my $r_str = join("",@r_lst);
print "@lst\n";
#print "$lst[2]\n";
#print "$lst[3]\n";

if ($str eq $r_str){
	print "Palindrome!!";
}
else
{
print "Not a palindrome :(\n \n";
}
