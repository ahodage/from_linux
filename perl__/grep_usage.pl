#!/usr/bin/perl

use strict;
use warnings;

#this script demonstrates the usage of grep

my @dogs= <ARGV>;
my @hounds=grep /hound/, @dogs;

print "@dogs\n@hounds\n";
