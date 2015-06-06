#!/usr/bin/perl

use warnings;
use strict;

=pod
Modify the Customer program to allow searching by a partial key
(for example, part of a phone number or part of an email address).You can use regular expressions to search for the patterns.
Simply keep in mind that you could find multiple results
and you should return each one.
=cut

#to extract the pattern that matches we use "grep"

my %Phone;
my %Email;
open(PH, "customers.txt") or die "Cannot open customers.txt $!\n";
	my $i =0;
   while(<PH>) {
       chomp;
       (my $number,my $email) = ( split(/\s+/, $_) )[1,2];
       $Phone{$number} =$_;
       $Email{$email} = $_;
	print "$i = $_\n"; $i++;
   }
   close(PH);


#store the numbers keys into the following array
#so it can be used to search partial matches
my @from_number = keys %Phone;
foreach $i (0..9){
print "\n$from_number[$i]\n";
}

#pattern to match e.g.(248)-555-9430 	
my $par = 1231;
my @match = grep /[\(\d\d\d\)\-\d\d\d\-]?$par/,@from_number;
print "Following are the match for you query\n@match\n";
 
