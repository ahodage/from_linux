
use strict;
use warnings;
use Getopt::Long qw(GetOptions);

my $do_clean;
GetOptions('c'=> \$do_clean) or die "\nERROR :	No flag specified\n";
if ($do_clean) {
	print "clean----whee\n";
}
 else {
	print "no clean-----boo\n";
}
