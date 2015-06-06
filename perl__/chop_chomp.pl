#!/usr/bin/perl

#the hash-bang command written on the first line indicates that this script
#will be run as a perl script

print "This is the 10th perl script in the perl tutorial series\n";

#Get inputs from keyboard
#chop remove the last character of the string
#irrespective of whether it is a new line of not.
#we have data loss bcoz of this in some cases
#alternative to this is chomp() fucntion which removes the 
#last character only if its the newline "\n". This is a much
# safer operation. Some examples

print "\nEnter your name\n";
$a = chop($name = <STDIN>);
print "\n\uhello $name. \unice to meet you!!\n the chopped character is $a\n ";

print "\nEnter your name\n";
$b = chomp($name = <STDIN>);
print "\n\uhello $name. \unice to meet you!!\n the chomped character is $b\n  ";

