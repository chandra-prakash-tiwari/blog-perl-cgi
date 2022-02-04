#!"C:\xampp\perl\bin\perl.exe"

use CGI qw(:all);

use LWP::UserAgent;
use HTTP::Request;
use HTTP::Headers;                                               
use HTTP::Response;                                              
use Data::Dumper;
use Encode;
use LWP::Simple::Post("post_xml");
use XML::Simple;
use CGI;
use JSON;
use DBI;

BEGIN {
    push @INC, 'C:\xampp\cgi-bin\blog\services';
}

use database;

my $cgi = new CGI;
my $json_response;
my $response;
my $dbh=database::connect();

print $cgi->header(
    -type => 'text/json',
    -access_control_allow_origin => '*',
    -access_control_allow_headers => 'content-type',
    -access_control_allow_methods => 'POST',
    -access_control_allow_credentials => 'true',
);

#    END

$response =  $cgi->param('POSTDATA');

my $json = decode_json($response);

my $fullname =  $json->{'fullname'};
my $username = $json->{'username'};
my $password = $json->{'password'};
my 
my $sql="INSERT INTO users (fullname,username,password) VALUES (?,?,?)";
my $sth=$dbh->prepare($sql);
$sth->execute($user->{fullname},$user->{username},$user->{password}) or die $DBI::errstr;
$final =    $sth->finish();
print $final;