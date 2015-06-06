#!/usr/bin/perl

use warnings;
use strict;

sub factorial {
      my ($num)=@_;
      return(1) if ($num <= 1);
      return($num * factorial($num - 1));
   }
   print factorial(6);
	print "\n";
