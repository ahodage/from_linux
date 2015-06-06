#!/usr/bin/perl

use warnings;
use strict;

sub printargs {
    print join("\n", @_);
}
printargs('market', 'home', 'roast beef');
