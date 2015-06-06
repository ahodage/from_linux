#!/usr/bin/perl

#the hash-bang command written on the first line indicates that this script
#will be run as a perl script

print "This is the 7ht perl script in the perl tutorial series\n";

#Usage of shift and unshift operation to remove or add elements to array
print "\n\n\n\n";

@colors = qw( red yellow blue orange );
print "array \@color = @colors\nPerforming shift operation which will remove the first element of the array\n";
shift @colors;
print "array \@color post shift operation = @colors\nPerforming unshift adds element to the first position\n";
unshift ( @colors,  "some_other_color");
print "array \@color post unshift operation = @colors\n";

print "\n\n\n\n";


#Usage of pop and push
#Note the usage of "qw" when trying to build up an array of strings

@colors = qw( red yellow blue orange );
print "array \@color = @colors\nPerforming pop operation which will remove the last element of the array\n";
pop @colors;
print "array \@color post pop operation = @colors\nPerforming push adds element to the last position\n";
push ( @colors,  "some_other_color");
print "array \@color post push operation = @colors\n";

print "\n\n\n\n";
@colors1= reverse @colors;
print "Reverse of array \@colors = @colors1\n";

#Useing sort
@sort_colors = sort @colors;
print "\nthe sorted order is @sort_colors\n";
