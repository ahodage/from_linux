#!/usr/bin/perl
  #this exersice shows the usage of variable and
  #how to take inputs from user

   use warnings;
   use strict;
  
   print "Monthly deposit amount? ";
   my  $pmt=<STDIN>;
   chomp $pmt;

   print "Annual Interest rate?  (ex. 7% is .07) ";
   my $interest=<STDIN>;
   chomp $interest;

  print "Number of months to deposit? ";
  my $mons=<STDIN>;
  chomp $mons;

  # Formula requires a monthly interest
  $interest/=12;

  my $total=$pmt * ( ( ( 1 + $interest) ** $mons ) -1 )/ $interest;

  print "After $mons months, at $interest monthly you\n";
  print "will have $total.\n";
