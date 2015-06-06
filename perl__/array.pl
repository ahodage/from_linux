#!/usr/bin/perl

#the hash-bang command written on the first line indicates that this script
#will be run as a perl script

print "This is the 6th perl script in the perl tutorial series\n";

#array usage and examples

@mix  = (2,3,4);
@mix2 = ("red","blue");
@mix3 = (10..15);
@mix4 = ('A'..'Z');

print "@mix\n@mix2\n@mix3\n@mix4\n";

#using concatenation on an array

@mix5 = (@mix2,"green", "orange");
print "@mix5\n";

#display and modify indivdual elements of an array
print "Unedited mix5 array = @mix5\n";
$mix5[2] = "violet";
print "Modified mix5 array = @mix5\n" ;
print "mix[0] = $mix[0]\nmix[1] = $mix[1]\nmix[2] = $mix[2]\n";

#Swap operation in perl

$sw1 = 34;
$sw2 = "v";
print "\$sw1 = $sw1 and \$sw2 = $sw2\n Perfoming the swapping operation\n";
($sw1,$sw2) =($sw2,$sw1) ;
print "\$sw1 = $sw1 and \$sw2 = $sw2\n";
print "\Uarray swapping is not poosible as individual array can have different sizes\E\n";

#size of an array
$size = @mix4;
print "Size of \@mix4 = $size\n";
print "the last index of array \@mix4 = $#mix4\n";
@empty_arrray = ();
print "the last index of array \@empty_array = $#empty_array\n";
