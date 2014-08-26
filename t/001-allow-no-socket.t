use FCGI::Engine::Manager::Server::Hypnotoad;

use Test::More;
use Test::Exception;

lives_ok { 
   my $h = FCGI::Engine::Manager::Server::Hypnotoad->new(pidfile => "/tmp/lol.pid", scriptname => "/usr/bin/ls" );
} 'Should be able to initialize module without socket';

done_testing();
