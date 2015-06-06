#!/usr/bin/perl


$first = 175;
$second = 31;
$combo1 = $first | $second; # bitwise or
$combo2 = $first ^ $second; # bitwise xor
$combo3 = $first & $second; # bitwise and
$combo4 = ~ $first ; # bitwise not

printf "%b\t%b\t%b\t%b\t%b\n",$combo1 ,$combo2, $combo3, $combo4;
