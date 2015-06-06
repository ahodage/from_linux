#!/usr/bin/perl

#the hash-bang command written on the first line indicates that this script
#will be run as a perl script

print "This is the 2nd perl script in the perl tutorial series\n";

#In perl we are not required to specify the type of variable
#We can directly assign a value to variable

$a=4; #assign "a" as integer
print "A variable is declared as integer by assigning it the value $a\n"; 
$b = "Abhishek";
print "My name is $b\n";#How a variable is declared as a string

print "Difference between sinlge quote  (\'\') and double quote (\"\")\n" ;
#Single quote does not interpolate/recognize special character properties
#It prints whatever is within it with no change
#While double quotes interpolate meanings of special charcters and substitute
#the corresponding value while printing out
#e.g. '\n' print \n. While "\n" prints out a newline
print "When single quote tries to print \\n \n";
print '\n';
print "\nPrints the characters as it is w/o any interpolation\n";
print "\n";
print "When double quote tries to print \\n \n";
print "\n";
print "Voila a new line\n";
