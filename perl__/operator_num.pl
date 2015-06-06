#!/usr/bin/perl

#the hash-bang command written on the first line indicates that this script
#will be run as a perl script

print "This is the 4th perl script in the perl tutorial series\n";

#Show different operator usage. Divided into two classes
#Operator for NUMBERS
#e.g. print "** exponation\n "
#Operator for strings
print "\uconcatenation syntax '.'\n Multiplication synntax 'string_value n'\n";
print 'Abhishek--'x 3;
print "\n";

$a = 3;
$b = 2;
$c = 5;
$a++;
$c--;
$b = $a**2;
$c = $a + $b;
print "After exponent b=a**2 operation and addition operation c=a+b\n";
print "a=$a \n b=$b\n c=$c\n";
$a += $c;
print "After accumulate operation a +=c\n";
print "a=$a \n b=$b\n c=$c\n";
print "After modulo operation %\n";
$b = $a%5;
print "a=$a \n b=$b\n c=$c\n";

