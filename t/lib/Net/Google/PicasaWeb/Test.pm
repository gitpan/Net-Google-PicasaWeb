package Net::Google::PicasaWeb::Test;
our $VERSION = '0.09';
use Test::Able::Simple;


has '+test_packages' => (
    default    => sub { [ qw(
    ) ] },
);
