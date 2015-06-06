#!/usr/bin/perl

use warnings;
use strict;

#find last but one  element in the list

my @lst = (2, 3, 5, 7, 8, 23, 46, 75634, 22354, 245, 232, 2, 0);
my $last_but = $#lst -1;
print "\ulast but one index of the list = $last_but\n";
#my $size = @lst;
#print "\usize of list = $size\n";

#print "\n\udo you want to confirm (y/n) : \n";
#my $choice  =  <STDIN>;
#chomp($choice);
#if ($choice eq "y"){
#	print "@lst\n";
#	}
#else{
#	print "\uno problem\n"
#	}
