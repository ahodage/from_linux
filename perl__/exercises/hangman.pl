#!/usr/bin/perl -w

   @words=qw( internet answers printer program );
	#words that are in the guess list
   @guesses=();
	#empty array to store in the user guess
   $wrong=0;
	#Denotes number of wrong guesses

   $choice=$words[rand @words]; 
	#the rand number_limit syntax generates a random number less than the limit
   $hangman="0-|--<";

  @letters=split(//, $choice);
	#stores the selected choice one character at a time in array
  @hangman=split(//, $hangman);
	#same for hanfman variable
  @blankword=(0) x scalar(@letters);
    OUTER: 
       while ($wrong<@hangman) {
           foreach $i (0..$#letters) {
                   if ($blankword[$i]) {
                         print $blankword[$i];
                   } else {
                           print "-";
                   }
           }
           print "\n";
           if ($wrong) {
                   print @hangman[0..$wrong-1]
           }
           print "\n Your Guess: ";
           $guess=<STDIN>;  chomp $guess;
           foreach(@guesses) {
                   next OUTER if ($_ eq $guess);
           }
           $guesses[@guesses]=$guess;
           $right=0;
          for ($i=0; $i<@letters; $i++) {
                   if ($letters[$i] eq $guess) {
                           $blankword[$i]=$guess;
                           $right=1;
                   }
           }
           $wrong++ if (not $right);
          if (join('', @blankword) eq $choice) {
                   print "You got it right!\n";
                   exit;
           }
   }
  print "$hangman\nSorry, the word was $choice.\n";

