#!/usr/bin/perl

use warnings;
use strict;

#get the file name for analysis from command line
my $fname = shift;
my $fname_m = "./$fname";

open(AR,$fname_m) or die "Problems with file\$!\n";
#The top module name for the design. Can be user provided
my $tmodule ='ROUTER';
#Find instances of top module name
my @content = <AR>;

my @data = grep /ROUTER/,@content;
#my @data = grep /\s+[Net]\s?[Area]/,@content;
my @indv = split /\s+/,$data[1];
my $size = @data;
my $size1 = @indv - 1;
print "\nExtracted data: @data\nSize of array: $size\n
Total power:$indv[$size1]\n";

