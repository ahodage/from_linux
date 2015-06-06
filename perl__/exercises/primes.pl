#!/usr/bin/perl
use warnings;
use strict;

#Program identifies prime numbers in the input array

my $TOTAL_PRIMES = 40;


   my $maxprimes=$TOTAL_PRIMES; 
   # Stop when you've found this many
   my $value=1;
   my $count=0;
   while($count < $maxprimes) {
               $value++;
              my $composite=0;  
   OUTER: for (my $i=2; $i<$value; $i++) {
           for(my $j=$i; $j<$value; $j++) {
               if (($j*$i)==$value) {
                   $composite=1;
                   last OUTER;
               }
           }
       }
       if (! $composite) {
           $count++;
           print "$value is prime\n";
       }
   }









