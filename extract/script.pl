#!/usr/bin/perl

use warnings;
use strict;



print "Enter the file name with extension for parsing\n";
my $fname =<STDIN>;
chomp($fname);
my $fname1 = "./$fname\n";
print "$fname1\n";
#=pot
open (PH,$fname1)
or die("Error opening the file\n$!\n");

my @content = <PH>;
foreach (@content){
#	print "$_\n";
}


my @data = grep /ROUTER/,@content;
#my @data = grep /\s+[Net]\s?[Area]/,@content;
my @indv = split /\s+/,$data[1];
my $size = @data;
my $size1 = @indv - 1;
print "\nExtracted data: @data\nSize of array: $size\n
Total power:$indv[$size1]\n";
#=cut

