#Perl script for vlsi lab2 grading

use strict;
use warnings;
use Getopt::Long qw(GetOptions);

#evince "*.pdf" to open up the pdf

#Check for flags
my $do_clean;
GetOptions('c'=> \$do_clean) or die "\nERROR :No operation specified\n";

if ($do_clean){
#-------------------Starting the clean up--------------------------------
	#Finds all directories in the current folder for deletion
	my @direc_list = `find ./ -type d`;
	#Selects the main folder
	#<DEBUG>
	#print @direc_list;
	foreach(@direc_list){
		chomp($_);
		unless($_ eq './')
		{ 
			print "Deleting.....$_\n";
			`rm -rf $_`;
		}

	}
}
else{
	print "No operations performed\n";
	exit;
}

