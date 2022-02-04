#!"C:\xampp\perl\bin\perl.exe"

print "Content-Type: text/html\n\n";

use strict; 
BEGIN {
    push @INC, 'C:\xampp\cgi-bin\blog\templates';
    push @INC, 'C:\xampp\cgi-bin\blog\services';
}

use navigation;
use footer;
use register;
use article_service;
use database;
use user_service;



print "<html>";
print "<head>";
print "<title>Chandra's Blog</title>";
print '<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">';
print '<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ" crossorigin="anonymous"></script>';
print '<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">';
print '<style>';
print '.footer{';
print '    bottom: 0;';
print '    left: 0;';
print '    position: absolute;';
print '    width: 100%;';
print '}';
print 'body{';
print '    position: relative;';
print '}';
print '.a{';
print '    padding:2rem 0 3rem';
print '}';
print '</style>';

print "</head>";
print "<body>";
print "<div>";
print '<div class="navigation">';
navigation::navigation();
print "</div>";
print '<div class="content">';
print '<div  style="width: 100%; margin-bottom: 2rem;">';
print '<div class="card" style="width: 75%; margin: auto; padding: 2rem;">';
print '<h1 class="card-title" style="align-self: center;">Sign Up</h1>';
print '<form action="register.cgi" method="get">';
print '<div class="form-group">';
print '<label for="examplename">Name</label>';
print '<input type="text" class="form-control" id="examplename" name="name" placeholder="Enter Name">';
print '</div>';
print '<div class="form-group">';
print '<label for="exampleInputEmail1">Email address</label>';
print '<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="email">';
print '<small id="emailHelp" class="form-text text-muted">We\'ll never share your email with anyone else.</small>';
print '</div>';
print '<div class="form-group">';
print '<label for="exampleInputPassword1">Password</label>';
print '<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password">';
print '</div>';
print '<div class="form-group">';
print '<label for="exampleInputPassword1">Confirm Password</label>';
print '<input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="confirm_password">';
print '</div>';
print '<button class="btn btn-primary" type="submit">Signup</button>';
print '</form>';
print '</div>';
print '</div>';
print "</div>";
print '<div class="footer">';
footer::footer();
print "</div>";
print "</div>";
print '<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>';
print '<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>';
print '<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>';
print "</body>";
print "</html>";