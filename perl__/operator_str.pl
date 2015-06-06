#!/usr/bin/perl

#the hash-bang command written on the first line indicates that this script
#will be run as a perl script

print "This is the 5th perl script in the perl tutorial series\n";

#Learn the usage of \U string operators\E
print "Learn the  usage of \U string operators\E\n";

$a = "Have";
$b = " a good";
$c = " day\n";

$quote  = $a.$b.$c;
print "Result using concatenation\n";
print "$quote";

#arithematic operations on string
$arth1 = "Ari ";
$arth2 = $arth1 + 1;
print $arth1," result of string addition operation\n",$arth2;

#show the usage of escape sequence

$number = 9;
print "The variable \$number value is $number\n";
print "\uthe path is C:\\software\\\n";


#Usage of line oriented quoting

print <<"VLSI";

This string helps provide an example of how we can utilize line \
oriented quoting in multiple line text. The perl is good scripting language to utilitze in VLSI
VLSI
