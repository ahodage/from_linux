#!/usr/bin/perl

use warnings;
use strict;

=pot
print "Input a string to in which you want to find pattern\n";
my $x;
#$x = <STDIN>;
$x = "Novice to Expert #@ in %^ a 3 day Perl course.\n";
chomp($x);
my $count;
while (my $z = ($x =~ /(\W+)/g))
{
	print "$1 __"; 
	$count++;
}
print "$count\n";

#grep function is used to extract a the pattern that matches
=cut
my $text = "!random 3d4+5-6";
my @matches = $text =~ /((?:\+|-)?\d)/g;
print "@matches\n";
