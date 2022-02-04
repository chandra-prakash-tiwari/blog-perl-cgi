#!"C:\xampp\perl\bin\perl.exe"
package footer;

use strict;
use warnings;
use Exporter;
use Scalar::Util qw(blessed);


our @ISA = qw(Exporter);
our @EXPORT = qw();


sub footer{

    print '<div>';
    print '<div class="card footer" style=" flex-direction: initial;">';
    print '<p>Follow Us</p>';
    print '<div style="display: flex;">';
    print '<a href="https://www.facebook.com/tiwarivas" class="fa fa-facebook" target="_blank"></a>';
    print '<a href="#" class="fa fa-twitter"></a>';
    print '<a href="https://www.linkedin.com/in/chandra-prakash-tiwari/" class="fa fa-linkedin" target="_blank"></a>';
    print '<a href="https://www.instagram.com/chandra.prakash.tiwari/" class="fa fa-instagram" target="_blank"></a>';
    print '<a href="https://github.com/chandra-prakash-tiwari" class="fa fa-github" target="_blank"></a>';
    print '</div>';
    print '</div>';

}

1;