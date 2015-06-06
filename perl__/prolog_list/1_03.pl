#!/usr/bin/perl

use warnings;
use strict;

my @lst = (2, 3, 5, 7, 8, 23, 46, 75634, 22354, 245, 232, 2, 0);
print "\uwhich element do you want to view?\n";
my $choice = <STDIN>;
my $size = @lst;
if ($choice < $size)
{
	print "\uthe $choice element = $lst[$choice]\n";
}
else{
	print "Out of bound\n";
}
