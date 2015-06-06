#!/usr/bin/perl

use warnings;
use strict;

#find last element in the list

my @lst = (2, 3, 5, 7, 8, 23, 46, 75634, 22354, 245, 232, 2, 0);
my $last = $#lst;
print "\ulast element of the list =@lst[$last]\n ";
print "\ulast index of the list = $last\n";
my $size = @lst;
print "\usize of list = $size\n";

print "\n\udo you want to confirm (y/n) : \n";
my $choice  =  <STDIN>;
chomp($choice);
if ($choice eq "y"){
	print "@lst\n";
	}
else{
	print "\uno problem\n"
	}
