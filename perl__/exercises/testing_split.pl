#!/usr/bin/perl

use warnings;
use strict;

#this scripts takes an article as an input and finds out
#how many times a particular word occurs in it

my @article = <ARGV>;
my $ar_size = @article;
print "@article\n";
print "\n\uthe article has $ar_size words in it\n";
print "\n\n\n";
#for (my $i=0;$i<= $ar_size;$i++){
#	print "\n\$article[$i] =$article[$i] \n ";
#	}
my @s_art = split(/ /,$article[0]);
my $size = @s_art;
print "\n\n\n\uthe article has $size words in it\n";

