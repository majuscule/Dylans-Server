use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Dylans::Server';
use Dylans::Server::Controller::Notes;

ok( request('/notes')->is_success, 'Request should succeed' );
done_testing();
