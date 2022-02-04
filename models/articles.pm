#!"C:\xampp\perl\bin\perl.exe"
package articles;

use strict;
use warnings;
use Exporter;
use Scalar::Util qw(blessed);


our @ISA = qw(Exporter);
our @EXPORT = qw(get_name get_username get_password get_created);


my $user_cookie="";


sub new {
    my $class = shift;
    my $self = {};
    bless $self, $class;
    return $self;
}


