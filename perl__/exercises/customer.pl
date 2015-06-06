#!/usr/bin/perl
#use warnings;
#use strict;

#Script to design a customer database using hash in perl

open(PH, "customers.txt") or die "Cannot open customers.txt $!\n";
	$i =0;
   while(<PH>) {
       chomp;
       ($number, $email) = ( split(/\s+/, $_) )[1,2];
       $Phone{$number} = $_;
       $Email{$email} = $_;
	print "$i = $_\n"; $i++;
   }
   close(PH);

   print "Type 'q' to exit\n";
   while (1) {
       print "\nNumber? ";
       $number = <STDIN>;  chomp($number);
       $address = "";
       if (! $number ) {
           print "E-Mail? ";
           $address = <STDIN>;  chomp($address);
       }

       next if (! $number and ! $address);
       last if ($number eq 'q' or $address eq 'q');

       if ( $number and exists $Phone{$number} ) {
           print "Customer: $Phone{$number}\n";
           next;
       }

       if ($address and exists $Email{$address} ) {
               print "Customer: $Email{$address}\n";
               next;
       }
       print "Customer record not found.\n";
       next;
   }
   print "\nAll done.\n";

