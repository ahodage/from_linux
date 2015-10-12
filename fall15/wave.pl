
use strict;
use warnings;

my $ret = `find ../../ \\( -name *.png -o -name *.PNG -o -name *.jpeg -o -name *.JPG -o -name *.jpg  \\) -print0 | xargs -I{} -0 cp -v {} ./images/`;

print($ret);
