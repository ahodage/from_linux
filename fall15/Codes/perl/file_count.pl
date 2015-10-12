#
use strict;
use warnings;


#print "Unzipping the file\n";
`tar -xvjf *.bz2`;
`mkdir -p ./images`;

# = 1
my @pdf_count = `find -name "*.pdf" -o -name "*.docx"`;
# = 3
my @verilog_count = `find -name "*.v"`;
# >6
my @waveform_count = `find -name "*.png" -o -name "*.PNG" -o -name "*.jpeg" -o -name "*.JPG" -o -name "*.jpg" `;
#print `find \( -name "*.png" -o -name "*.PNG" -o -name "*.jpeg" -o -name "*.JPG" -o -name "*.jpg"  \) -print0 | xargs -I{} -0 cp -v {} ./images/`;
# = 1
my @sdc_count = `find -name "*.sdc"`;
# = 1
my @sdf_count = `find -name "*.sdf"`;
# = 1
my @spef_count = `find -name "*.spef"`;
 
if (scalar @pdf_count >= '1')
{	print "\nPDF good\n";	print "@pdf_count\n";	}
else
{	print "\nPDF missing\n";	}

if (scalar @verilog_count >= '3')
{	print "\nverilog good\n";	}
else
{	print "\nverilog missing\n";	}
	

if (scalar @sdc_count >= '1')
{	print "\nsdc good\n";	}
else
{	print "\nsdc missing\n";	}


if (scalar @spef_count >= '1')
{	print "\nspef good\n";	}
else
{	print "\nspef missing\n";	}

if (scalar @sdf_count >= '1')
{	print "\nsdf good\n";	}
else
{	print "\nsdf missing\n";	}

if (scalar @waveform_count >= '6')
{	print "\nwaveform good\n"; print @waveform_count;
	}
else
{	print "\nwaveform missing\n@waveform_count\n";	}






