#!/usr/bin/perl

#the hash-bang command written on the first line indicates that this script
#will be run as a perl script

print "This is the 12th perl script in the perl tutorial series\n";

#Provide inputs to perl script from command line
#<ARGV> requires the commadline argument to be a file. Acc to my understanding
#while to get multiple strings as input use @ARGV i.e. store the input 
#arguments into array
#EXAMPLES
#when input argument will be files
for (<ARGV>){
	print "$_\n";
	}

#when input arguments are string
#for (@ARGV){
#	print "$_\n";
#	}
 
