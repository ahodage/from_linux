#!/usr/bin/perl

#the hash-bang command written on the first line indicates that this script
#will be run as a perl script

print "This is the 9th perl script in the perl tutorial series\n";

#"splice" usage
print "\n \"splice\" syntax is splice (array_name,start_index_for_splicing,elements_to_splice)\n";
@rpt = qw (summary area power yield stats);
print "rpt before splicing @rpt\n";
@junk_rpt = splice(@rpt,2,3);

print "Reports needeed @rpt\n Junk reports @junk_rpt\n";

#split usage
$sentence = "This:sentence:is:going:to:be:split"; 
$word = "Abhishek";

@s_sentence = split(/:/,$sentence);
@s_word = split(//,$word);

print "The sentence $sentence\n when splitted gives\n @s_sentence\n";
print "The word $word\n when splitted gives\n @s_word\n";

