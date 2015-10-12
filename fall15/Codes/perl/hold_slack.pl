#/usr/bin/perl/
use strict;
use warnings;

use LWP::Simple;
=pod
print "\n------------------------------------------Hold time slack-------------------------------------------------\n";
my $holdfile = `find ../Downloads -name "*hold*.txt"`;
#print "$holdfile\n";
open FILE,$holdfile or die "\nERROR: $!\n";
my @file = <FILE>;
my $line = shift @file;
while($line)
{
	#$line = <powr>;
	#print "$line";
	if ($line =~ /\s*slack\s*\(MET\)\s+/gi)
	{
		print "$line";
	}
	 $line = shift @file;
}
close(FILE);
=cut

system("./DRC_Clean.png");

