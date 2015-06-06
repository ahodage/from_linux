#!/usr/bin/perl

=pod
See whether you can produce a pattern to match a standard time format. 
All the following should be acceptable: 12:00am, 5:00pm, 8:30AM.
These should probably not be accepted: 3:00, 2:60am, 99:00am, 3:0pm.
=cut

print "Enter a time to confirm for format confirmation\n";
$time = <STDIN>;
chomp($time);
$approve = $time =~m/[[1][0-2]|\d?]\:[[0-5]\d][p|a]m/gi;
if ($approve){
		print "The time format $time is approved!\n";
}
else{
	print "What the hell man!!\n";
}
# m/[([1][0-2])?|\d?]\:[[0-5]\d][p|a]m/gi;

