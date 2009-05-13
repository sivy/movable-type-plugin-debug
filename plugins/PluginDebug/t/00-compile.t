
use lib qw( t/lib lib extlib );

use strict;
use warnings;

use MT::Test;
use Test::More tests => 2;

require MT;
ok (MT->component ('plugindebug'), 'PluginDebug loaded');
require_ok ('PluginDebug::Util');

1;
