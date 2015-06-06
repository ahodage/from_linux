#!/usr/bin/perl

use warnings;
use strict;

#reverse the list
my @lst = (2, 3, 5, 7, 8, 23, 46, 75634, 22354, 245, 232, 2, 0);
print "Before reversion =\n@lst\n";
my @r_lst = reverse(@lst);
print "After reversion =\n@r_lst\n";

