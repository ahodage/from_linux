#!/usr/bin/perl
use strict;
use warnings;

#the hash-bang command written on the first line indicates that this script
#will be run as a perl script

print "This is the 14th perl script in the perl tutorial series\n";

#will provide examples on condiotionals usage in perl
#conditionals if-else

print "\n What's your name guvnr?\n";
my $name = <STDIN>;
chomp($name);
if ($name eq "abhishek"){
	print "\uviola! you have been granted access!!\n";
	}
	else{
		print "\n\u hey you dont have access.\uget the hell out\n";
	}
#usage of foreach statement
#syntax:

my @str = qw(a1 a2 a3 a4 a5);
foreach my $str(@str)
{
	print "\nstr is $str\n";
}

#usage and syntax for "last" statement
print "\nGuess the number\n";
chomp($name = <STDIN>);
while ($name != 7){
	print "Number : $name\n";
	last if ($name>3)
}
