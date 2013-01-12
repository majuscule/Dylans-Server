use strict;
use warnings;

use Dylans::Server;

my $app = Dylans::Server->apply_default_middlewares(Dylans::Server->psgi_app);
$app;

