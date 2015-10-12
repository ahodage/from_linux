#Perl script for vlsi lab2 grading

use strict;
use warnings;
use Getopt::Long qw(GetOptions);

#evince "*.pdf" to open up the pdf

#Check for flags
my $do_clean;
my $LVS;
my $DRC;
my $lay;
GetOptions(	'c'=> \$do_clean,
	    	'l'=> \$LVS,'d'=> \$DRC,
		'lay'=> \$lay) 
		or die "\nERROR :	No flag specified\n";

if ($do_clean){
#-------------------Starting the clean up--------------------------------
#----------Getting ready for the next submission----------------------
#Finds all directories in the current folder for deletion
my @direc_list = `find ./ -type d`;

#Selects the main folder
#<DEBUG>
#print $direc_list[1];
#`pkill eog`;
`rm -rf $direc_list[1]`
#exit;

}

#Extract file available in Downloads directory
#`tar -xvjf *.bz2`;

#Find pdf path of the report
my $pdf_add = `find -name "*.pdf"`;
#display pdf content
print `less $pdf_add`;


print "\n------------------------Power--------------------------------------\n";
my @powerfile = `find -name "*power*.rpt" -o -name "*power*.txt" -o -name "*Power*.txt" -o -name "*Power*.rpt" `;
my $main_power = $powerfile[$#powerfile];
open FILE,$main_power or die "\nERROR: $!\n";
my @file = <FILE>;
my $line = shift @file;
while($line)
{
	#$line = <powr>;
	#print "$line";
	if ($line =~ /\s*Total\sPower/gi)
	{
		print "$line";
	}
	 $line = shift @file;
}
close(FILE);
#<DEBUG>
#print `less  $power_file`;
#---------------------------------DRC-clean-----------------------
if ($DRC){
my $drc_path = `find -name "*DRC*[png|jpg|jpeg|tiff]" `;
`gnome-open $drc_path &`;
print "\n----------------DRC-done----------------\n";

}
#---------------------------------LVS-clean-----------------------
if ($LVS){
my $lvs_path = `find -name "*LVS*[png|jpg|jpeg|tiff]"`;
`gnome-open $lvs_path`;
print "\n----------------LVS-done----------------\n";

}
#---------------------------------Layout-----------------------
if ($lay){
my $lay_path = `find -name "*ayout*.png" -o -name "*ayout*.jpg" -o -name "*ayout*.jpeg"`;
`gnome-open $lay_path`;
#print "$lay_path";
print "\n----------------Layout-done----------------\n";

}
print "\n--------------------Hold time slack----------------------------------\n";
my @holdfile = `find -name "*hold*.txt" -o -name "*hold*.rpt"`;
#print "@holdfile\n";
my $main_hold = $holdfile[$#holdfile];
open FILE,$main_hold or die "\nERROR: $!\n";
 @file = <FILE>;
 $line = shift @file;
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
print "\n----------------------Setup time slack------------------------------\n";
my @setupfile = `find -name "*setup*.txt" -o -name "*hold*.rpt"`;
#print "@setupfile\n";
my $main_setup = $setupfile[$#setupfile];
open FILE,$main_setup or die "\nERROR: $!\n";
 @file = <FILE>;
 $line = shift @file;
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
#print `ls ./images/`;	


