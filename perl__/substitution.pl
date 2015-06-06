#!/usr/bin/perl

use warnings;
use strict;

my $weight = "120lbs";
print "Before substitution = $weight\n";

#this is the method to use substitution against a variable
#which is not $_
#operator used = " =~ "

$weight =~ s/lbs?//;
print "After substitution = $weight\n";

