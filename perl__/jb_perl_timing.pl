#!/usr/bin/perl

use warnings;
use strict;

#script for slack extraction from a different type of
# encounter timing report

my $fname = shift ; # Shift from command line
my $fname_m= "./$fname";

print "File name for analysis $fname \n";

open (TM,$fname_m) or die "Unable to open the file\n$!\n";

#store data into a single string
my $log = join( "" , <TM>) ;
#print $log

# Parse all Slacks to return the floating point valued strings
my @slack_list    = $log =~ m/slack\s+\(\w*\)\s*(-?\d+\.?\d*)/g ;
my @arrival_list  = $log =~ m/data arrival time\s+(\d+\.?\d*)/g ;
my @required_list = $log =~ m/data required time\s+(\d*\.?\d*)/g ;

print "slack: " ;
print "@slack_list" . "\n" ;

print "arrival: " ;
print "@arrival_list" . "\n" ;

print "required: " ;
print "@required_list" . "\n" ;
