#!"C:\xampp\perl\bin\perl.exe"
package article_service;

use strict;
use warnings;
use Exporter;
use Scalar::Util qw(blessed);


our @ISA = qw(Exporter);
our @EXPORT = qw();


sub get_all_published_articles{
    my $dbh = shift;
    my $sth = $dbh->prepare("SELECT * FROM articles WHERE published = 1");
    $sth->execute();

    return $sth->fetchall_arrayref({});
}

sub create_articles{
    my $dbh = shift;
    my $article = shift;
    my $sql = "INSERT INTO articles(title, slug, author, content, status) VALUES (?,?,?,?,?)";
    my $sth = $dbh->prepare($sql);
    $sth->execute($article->{title}, $article->{slug}, $article->{author}, $article->{content}, $article->{status});
    return 1;
}






sub create_table{
    my $dbh = shift;
    my $sql = "CREATE TABLE IF NOT EXISTS articles (
        id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
        title VARCHAR(300) NOT NULL,
        slug VARCHAR(300) NOT NULL UNIQUE=TRUE,
        author INT UNSIGNED NOT NULL,
        content TEXT NOT NULL,
        created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        status SET('draft','published') NOT NULL DEFAULT 'draft',
        FOREIGN KEY (author) REFERENCES users(id)
    )";
    my $sth = $dbh->prepare($sql);
    $sth->execute();
}


1;