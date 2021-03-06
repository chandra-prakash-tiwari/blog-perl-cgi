#!"C:\xampp\perl\bin\perl.exe"
package user_service;

use strict;
use warnings;
use Exporter;
use Scalar::Util qw(blessed);

BEGIN {
    push @INC, 'C:\xampp\cgi-bin\blog\templates';
    push @INC, 'C:\xampp\cgi-bin\blog\services';
    push @INC, 'C:\xampp\cgi-bin\blog\services\users';
}

our @ISA = qw(Exporter);
our @EXPORT = qw();

sub create_user{
    my $dbh=shift;
    my $user=shift;
    my $sql="INSERT INTO users (fullname,username,password) VALUES (?,?,?)";
    my $sth=$dbh->prepare($sql);
    $sth->execute($user->{fullname},$user->{username},$user->{password}) or die $DBI::errstr;

    return 1;
}



sub create_user_table{
    my $dbh = shift;
    my $sql = "CREATE TABLE IF NOT EXISTS users (
        id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        fullname VARCHAR(300) NOT NULL,
        username VARCHAR(100) NOT NULL UNIQUE,
        password VARCHAR(100) NOT NULL
    )";
    my $sth = $dbh->prepare($sql);
    $sth->execute();
}

1;