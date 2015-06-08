#!/usr/bin/perl

use warnings;
use strict;

#script for slack extraction from a different type of 
# encounter timing report

print "File name for analysis\n";
my $fname =<STDIN>;
my $fname_m= "./$fname";

open (TM,$fname_m) or die "Unable to open the file\n$!\n";
#store data into array from file handle
my @data = <TM>;
print "@data\n";
#find the relevant data using grep
#timing slack,arrival time,required time,etc.

my @slack = grep /\s*slack\s*/,@data;
print "@slack\n";
#finding no. of slack results generated
my $size = @slack;
print "No. of slack generated :$size\n";
#seperate the character for actual slack;
my @slc;
my $i=0;
my @slc1;
foreach (@slack){
	@slc = split /\s+/,$_;
	$slc1[$i]=$slc[@slc-1]; $i++;
	print "@slc1\n";
}
#extract data arrival time & data required time
my @data_arr = grep /arrival\s?time\s+[\-]+/,@data;
my @data_req = grep /required\s?time/,@data;
print "@data_arr\n";
print "@data_req\n";
