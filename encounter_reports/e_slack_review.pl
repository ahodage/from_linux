#!/usr/bin/perl

=pot
Your approach seems pretty reasonable.  However, the most important step, extracting a single number for each of those values is missing.   You extract a substring that contains the number, but never extract the number directly.

For example, the following would create an array containing just the values.  You might want to give it another try with the area or power reports.
=cut

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
print $log;

# Parse all Slacks to return the floating point valued strings
my @slack_list    = $log =~ m/slack\s+\(\w*\)\s*(-?\d+\.?\d*)/g ;
my @arrival_list  = $log =~ m/data arrival time\s+(\d+\.?\d*)/g ;
my @required_list = $log =~ m/data required time\s+(\d*\.?\d*)/g ;

=pot
print "slack: \n" ;
print "@slack_list" . "\n" ;

print "arrival: \n" ;
print "@arrival_list" . "\n" ;

print "required: \n" ;
print "@required_list" . "\n" ;
=cut
