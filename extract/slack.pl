#!/usr/bin/perl

use warnings;
use strict;

#This script extracts the timing slack from an Encounter timming 
#report

print "Enter the timing script to analysis\n";
my $fscript = <STDIN>;
#Provide the proper script name with extension for correct
#result
my $fscript1 = "./$fscript";

open(PH,$fscript1) or die "Error opening file\n$!\n";
my @sc = <PH>;
foreach (@sc){
	#print "$_\n";
}

#Collect all the lines containing the phrase timing slack in an
#array
my @sc1 = grep /Timing slack/,@sc;
print "@sc1\n";
my $i;

print "10 worst timing slack:\n";
for $i(0..@sc1-1){
	my @sc2 = split /:/,$sc1[$i];
	$sc2[1]=~ s/[a-z]*//g;
	print "$sc2[1]\n";
}
