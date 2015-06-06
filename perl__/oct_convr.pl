#!/usr/bin/perl

use warnings;
use strict;

#print "\ntell me a number\n";
#my $c = hex(<ARGV>);
#print "Oct conversion : $c \n";
for (my $i = 0; $i < @ARGV; $i++) {
   my $val = hex($ARGV[$i]);
    printf("0x%x\t= %d\t= 0b%b\n", $val, $val, $val);
}
