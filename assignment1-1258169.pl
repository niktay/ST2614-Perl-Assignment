#! /usr/bin/perl -w

#===============================================================================
#
#         FILE: assignment1-1258169.pl
#
#        USAGE: ./assignment1-1258169.pl {filename} [SWITCHES] 
#
#  DESCRIPTION:
#
#      OPTIONS: ---
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
use Cwd;

foreach(&scrape_emails) {
    printf "%s\n", $_;
}


sub print_usage
{
	print <<END;

Usage: {filename} [switches]

    -dpath      directory to search for html files            (default: .)
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
   my @input                = <STDIN>;

   
   foreach(@input) {
       while($_ =~ m/($email_regex)/g) {
           push(@scraped_emails, $1) unless(grep(/$1/, @scraped_emails));
       }
   }

   return @scraped_emails;
}
