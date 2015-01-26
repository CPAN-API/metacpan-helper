#!perl

use strict;
use warnings;

use Test::More 0.88 tests => 2;
use MetaCPAN::Helper;

my $helper = MetaCPAN::Helper->new();
ok(defined($helper), "instantiate MetaCPAN::Helper");

my $RELEASE_NAME = 'Moose';
my $git_repo     = eval { $helper->release2git_repo($RELEASE_NAME) };

ok(
    (!defined $git_repo or !ref($git_repo)),
    "release2git_repo('$RELEASE_NAME') should return a scalar value"
);

