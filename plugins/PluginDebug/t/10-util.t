
use lib qw( t/lib lib extlib );

use strict;
use warnings;

use MT::Test;
use Test::More tests => 1;

require MT::Plugin;
can_ok ('MT::Plugin', 'debuglog');

1;
