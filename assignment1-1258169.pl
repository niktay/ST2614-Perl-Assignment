#! /usr/bin/perl -w

#===============================================================================
#
#         FILE: assignment1-1258169.pl
#
#        USAGE: ./assignment1-1258169.pl [OPTIONS] 
#
#  DESCRIPTION: Perl based HTML email scraper
#
#      OPTIONS: -d[PATH], -f[t|h], -h, -s[adn], -v  
# REQUIREMENTS: Perl 5.10.x
#         BUGS: ---
#        NOTES: ---
#       AUTHOR: Nikolas Tay Zhihao (p1258169), DISM/FT/2A/02
# ORGANIZATION: Singapore Polytechnic
#      VERSION: 1.0
#      CREATED: 27/04/2013 16:35:24
#     REVISION: ---
#
#===============================================================================

use strict;
use warnings;
no warnings "recursion";

my @html_found;
my @email_list;
my @sorted_list;
my $search_dir;
my $output_type;
my $sort_order;

&check_args ? &process_args : die "ERROR! Please refer to -h for help\n";

&search_directory($search_dir);

foreach(@html_found) {
    @email_list   = &scrape_emails($_);

    @sorted_list = sort @email_list             if $sort_order eq 'a';
    @sorted_list = reverse sort @email_list     if $sort_order eq 'd';
    @sorted_list = @email_list                  if $sort_order eq 'n';

    $output_type eq 't' ? &output_text(\@sorted_list) :
    &output_html(\@sorted_list);
}


sub print_usage
{
	print <<END;

Usage: {filename} [switches]

    -dPATH      PATH to search for html files                 (default: .   )
    -f[th]      output in (t)ext or (h)tml mode               (default: text)
    -h          print this message and exit
    -s[adn]     sort in (a)scending, (d)escending or (n)one   (default: none)
    -v          print version and exit

END
}


sub print_version
{
    print <<END;

********************************************************************************
 ST2614 Assignment 1, Ver. 1.0 done by Nikolas Tay p1258169 class DISM/FT/2A/02
********************************************************************************

END
}


sub scrape_emails
{
    my @scraped_emails      = (); 
    my $email_regex         = qr{
                                [a-zA-z0-9!#$%&'*+\/=?^_`{|}~-]+
                                (?:\.[a-z0-9!#$%&'*+\/=?^_`{|}~-]+)*
                                @(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+
                                [a-z0-9](?:[a-z0-9-]*[a-z0-9])?
                                }x;
   my @input                = open(INFILE, "<", shift) or 
                                    die "Can't read input file:$!";

   
   foreach(<INFILE>) {
       while($_ =~ m/($email_regex)/g) {
           push(@scraped_emails, $1) unless(grep(/$1/, @scraped_emails));
       }
   }

   close INFILE;
   return @scraped_emails;
}


sub output_html
{ 
    my @emails = @{shift;};

    open(OUTFILE, ">>", "output.html") or die "Can't open output file:$!";

    print OUTFILE <<END;
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Email List</title>
</head>

<body>
    <table>
        <tr><th>Emails</th></tr> 
END
    
    foreach(@emails) {
        print OUTFILE "\t\t<tr><td><a href=\"mailto:$_\">$_</a></td></tr>\n";
    }

    print OUTFILE <<END;
    </table>
</body>
</html>
END

    close OUTFILE
}


sub output_text
{
    my @emails = @{shift;};

    foreach(@emails) {
        print "$_\n";
    }
    print "\n";
}


sub search_directory
{
    my $base_dir                = shift;
    my $search_string           = $base_dir."/*.html ".$base_dir."/*.htm";
    my $search_directory_files  = $base_dir."/*";

    push(@html_found, glob $search_string);

    foreach(glob $search_directory_files) {
        &search_directory($_);
    }
}


sub check_args
{
    my $arg_regex   = qr/^[-](d.+|f(t|h)|h|s(a|d|n)|v)$/;

    ($_ =~ $arg_regex) or return 0 foreach(@ARGV);
    return 1;
}


sub process_args
{
    foreach(@ARGV) {
        $_ =~ m/-h/     ? do { &print_usage and exit;   }   :
        $_ =~ m/-v/     ? do { &print_version and exit; }   :
        $_ =~ m/-d.*/   ? $search_dir   = substr($_, 2)     : 
        $_ =~ m/-f.*/   ? $output_type  = substr($_, 2)     :
        $_ =~ m/-s.*/   ? $sort_order   = substr($_, 2)     :
        next; 
    }
    
    $search_dir     = "." if not defined($search_dir);
    $output_type    = "t" if not defined($output_type);
    $sort_order     = "n" if not defined($sort_order);

}
