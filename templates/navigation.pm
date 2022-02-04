#!"C:\xampp\perl\bin\perl.exe"
package navigation;

use strict;
use warnings;
use Exporter;
use Scalar::Util qw(blessed);


our @ISA = qw(Exporter);
our @EXPORT = qw();

my $user_cookie="";

sub navigation {
    print '<nav class="navbar navbar-expand-lg navbar-dark bg-primary">';
    print '<div class="container-fluid">';
    print '<a class="navbar-brand" href="#">Chandra Prakash Blog\'s</a>';
    print '<button class="navbar-toggler" type="button" data-bs-toggle="collapse"'; 'data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"'; 'aria-label="Toggle navigation">';
    print '<span class="navbar-toggler-icon"></span>';
    print '</button>';
    print '<div class="collapse navbar-collapse" id="navbarSupportedContent">';
    print '<ul class="navbar-nav me-auto">';
    print '<li class="nav-item">';
    print '<a class="nav-link" href="/articles">Home</a>';
    print '</li>';
    if($user_cookie) {
        print '<li class="nav-item">';
        print '<a class="nav-link" href="/articles/add?next={{request.path}}">Add</a>';
        print '</li>';
    }
    print '</ul>';
    print '<div class="btn-group" role="group">';
    if($user_cookie) {
        print '<h1  type="button" class="btn btn-light dropdown-toggle" data-bs-toggle="dropdown" data-bs-display="static"  style="padding:0;width: 3rem;">Logout</a>';
    } else {
        print '<h1  type="button" class="btn btn-light dropdown-toggle" data-bs-toggle="dropdown" data-bs-display="static"  style="padding:0;width: 3rem;">Login</a>';
    }
    print '<ul class="dropdown-menu dropdown-menu-lg-end">';
    if($user_cookie) {
        print '<li class="dropdown-item">';
        print '<a  class="nav-link" href="/accounts/profile">View Profile</a>';
        print '</li>';
        print '<li class="dropdown-item">';
        print '<a  class="nav-link" href="/articles/add?next={{request.path}}">Add Blog</a>';
        print '</li>';
        print '<li class="dropdown-item">';
        print '<a  class="nav-link" href="/articles/get_all_by_user">View All Blog</a>';
        print '</li>';
        print '<li class="dropdown-item">';
        print '<a  class="nav-link" href="/accounts/logout?next={{request.path}}" onclick="()=>confirm("Do you want to logout?")">Logout</a>';
        print '</li>';

    } else {
        print '<li class="dropdown-item">';
        print '<a  class="nav-link" href="/login">Login</a>';
        print '</li>';
        print '<li class="dropdown-item">';
        print '<a  class="nav-link" href="/register">Register</a>';
        print '</li>';
    }
    print '</ul>';
    print '</div>';
    print '</div>';
    print '</div>';
    
}

1;