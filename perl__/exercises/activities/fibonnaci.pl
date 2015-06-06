#!/usr/bin/perl

use warnings;
use strict;

sub fibo(){
	(my $n) = @_;
	if  ($n<=2) {
		return 1;
	}
	else {
		print &fibo($n-1) + &fibo($n-2);
	}
}

print "Enter a max limit for fibonnaci:\n";
my $in = <stdin>;
chomp($in);
print &fibo($in);
