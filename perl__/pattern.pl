#!/usr/bin/perl

use warnings;
use strict;

print "Input a string to in which you want to find pattern\n";
$_ = <STDIN>;
chomp();
my $z = m/\s*the+\s/g;
print "$z\n";

#grep function is used to extract a the pattern that matches

