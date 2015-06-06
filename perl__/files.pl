#!/usr/bin/perl

#the hash-bang command written on the first line indicates that this script
#will be run as a perl script

print "This is the 11th perl script in the perl tutorial series\n";

#Using file opertations 
#Will be discussing usage of "Open"
# $.-> returns the file number
# $_ -> returns the last matched??
# $! -> error message

$fname = "/home/abhi/Desktop/perl__/file_testing.txt";
# where xyz is the filehandle that will be associated with 
#the file_testing.txt file for any future operations.
# the syntax for file opening is
# "open file_handle,file_location or die 'Error messsage value to be displayed'"

open xyz,$fname or die "There is some error in the file\n\Uerror\E : $!\n";
while (<xyz>){
#	print "$. is: $_";
	}

#using read/write operations on a file

#Syntax open filehandle,mode,filename
#mode  "<" read mode
#mode  ">" write mode
#mode  ">>" append mode


open xy,"$fname" or die "\Uerror...error!\E";
print xy"\n\n\Uthis additions below are performed using file operation in perl\E\n\n ";

for $i(6..15){
	print xy"the localtime is :",
	scalar(localtime),"\n";
	}
while (<xy>){
	print;
	}
close xy;
