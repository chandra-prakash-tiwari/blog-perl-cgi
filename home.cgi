#!"C:\xampp\perl\bin\perl.exe"

print "Content-Type: text/html\n\n";

use strict; 
BEGIN {
    push @INC, 'C:\xampp\cgi-bin\blog\templates';
}

use navigation;


print "<html>";
print "<head>";
print "<title>Chandra's Blog</title>";
print '<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">';
print "</head>";
print "<body>";
print "<div>";
print "<div>";
navigation::navigation();
print "</div>";
print "</div>";
print '<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>';
print '<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>';
print '<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>';
print "</body>";
print "</html>";


# print <<END_HTML;
# <html>
#   <head>
#     <title>Document</title>
# </head>
#   <body>
#   <div>
#     <div> 
#                     
#                             <li class="dropdown-item">
#                                 
#                             </li>
#                             {% else %}
#                             <li class="dropdown-item">
#                                 <a  class="nav-link" href="/accounts/login?next={{request.path}}">Login</a>
#                             </li>
#                             <li class="dropdown-item">
#                                 <a  class="nav-link" href="/accounts/signup?next={{request.path}}">Signup</a>
#                             </li>
#                             {% endif %}
#                         </ul>
#                     </div>
                      
#                     <!-- {% if not user.is_authenticated %}
#                     <form class="d-flex">
#                         <a class="btn btn-light" href="/accounts/login?next={{request.path}}">Login</a>
#                         <a class="btn btn-light ms-3" href="/accounts/signup?next={{request.path}}">Signup</a>
#                     </form>
#                     {% else %}
#                     <form class="d-flex">
#                         <a class="btn btn-light" href="/accounts/logout?next={{request.path}}" onclick="return confirm('are you sure for logout')">Logout</a>
#                     </form>
#                     {% endif %} -->
#                 </div>
#             </div>
#         </nav>
#     </div>
#     <div class="a">
#        hi
#     </div>
#     <footer>
#         hi
#     </footer>
#     </div>
#     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
#     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
#   </body>
# </html>
# END_HTML